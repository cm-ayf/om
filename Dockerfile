# syntax=docker/dockerfile:1@sha256:ac85f380a63b13dfcefa89046420e1781752bab202122f8f50032edf31be0021

FROM node:20.11.0-bookworm@sha256:3ab325a3e2b21e2289c4bfa11593a3da563d2a7559a4cb80493c7c0c9fe13cb6 AS deps
ARG NODE_ENV=production
WORKDIR /app
RUN npm config set cache /.npm
COPY ./package*.json ./
RUN --mount=type=cache,id=npm-$TARGETPLATFORM,target=/.npm \
    npm ci

FROM --platform=$BUILDPLATFORM node:20.11.0-bookworm@sha256:3ab325a3e2b21e2289c4bfa11593a3da563d2a7559a4cb80493c7c0c9fe13cb6 AS builder
ARG NODE_ENV=development
WORKDIR /app
RUN npm config set cache /.npm
COPY ./build.js ./
COPY ./package*.json ./
RUN --mount=type=cache,id=npm-$TARGETPLATFORM,target=/.npm \
    npm ci
COPY ./src/ ./src/
RUN npm run build

FROM --platform=$BUILDPLATFORM node:20.11.0-bookworm@sha256:3ab325a3e2b21e2289c4bfa11593a3da563d2a7559a4cb80493c7c0c9fe13cb6 AS dictionary
WORKDIR /app
RUN wget https://github.com/jpreprocess/jpreprocess/releases/download/v0.6.1/naist-jdic-jpreprocess.tar.gz \
    && tar xzf naist-jdic-jpreprocess.tar.gz \
    && rm naist-jdic-jpreprocess.tar.gz

FROM --platform=$BUILDPLATFORM node:20.11.0-bookworm@sha256:3ab325a3e2b21e2289c4bfa11593a3da563d2a7559a4cb80493c7c0c9fe13cb6 AS models
WORKDIR /app
RUN git clone --depth 1 https://github.com/icn-lab/htsvoice-tohoku-f01.git

FROM --platform=$BUILDPLATFORM node:20.11.0-bookworm@sha256:3ab325a3e2b21e2289c4bfa11593a3da563d2a7559a4cb80493c7c0c9fe13cb6 AS user-dictionary
WORKDIR /app
RUN wget https://github.com/jpreprocess/jpreprocess/releases/download/v0.6.3/x86_64-unknown-linux-gnu-.zip \
    && unzip x86_64-unknown-linux-gnu-.zip \
    && rm x86_64-unknown-linux-gnu-.zip
COPY ./data/dict.csv ./
RUN ./dict_tools build -u lindera dict.csv user-dictionary.bin

FROM gcr.io/distroless/nodejs20-debian12:nonroot@sha256:e49fade89401326ed40798d3ac2b5c1be033e0da2c4cd00a54331448d6bd9938 AS runner
WORKDIR /app
ENV NODE_ENV=production
COPY ./package.json ./
COPY --from=builder /app/dist/ ./dist/
COPY --from=deps /app/node_modules/ ./node_modules/
COPY --from=dictionary /app/ ./dictionary/
ENV DICTIONARY=dictionary/naist-jdic
COPY --from=models /app/ ./models/
ENV MODELS=models/htsvoice-tohoku-f01/tohoku-f01-neutral.htsvoice
COPY --from=user-dictionary /app/ ./user-dictionary/
ENV USER_DICTIONARY=user-dictionary/user-dictionary.bin

CMD ["dist/main.js"]
