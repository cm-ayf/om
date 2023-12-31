# syntax=docker/dockerfile:1@sha256:ac85f380a63b13dfcefa89046420e1781752bab202122f8f50032edf31be0021

FROM node:20.10.0-bookworm AS deps
ARG NODE_ENV=production
WORKDIR /app
RUN npm config set cache /.npm
COPY ./package*.json ./
RUN --mount=type=cache,id=npm-$TARGETPLATFORM,target=/.npm \
    npm ci

FROM --platform=$BUILDPLATFORM node:20.10.0-bookworm AS builder
ARG NODE_ENV=development
WORKDIR /app
RUN npm config set cache /.npm
COPY ./build.js ./
COPY ./package*.json ./
RUN --mount=type=cache,id=npm-$TARGETPLATFORM,target=/.npm \
    npm ci
COPY ./src/ ./src/
RUN npm run build

FROM --platform=$BUILDPLATFORM node:20.10.0-bookworm AS model-fetch

WORKDIR /app
RUN wget https://github.com/jpreprocess/jpreprocess/releases/download/v0.6.1/naist-jdic-jpreprocess.tar.gz \
    && tar xzf naist-jdic-jpreprocess.tar.gz \
    && rm naist-jdic-jpreprocess.tar.gz
RUN git clone --depth 1 https://github.com/icn-lab/htsvoice-tohoku-f01.git

FROM --platform=$BUILDPLATFORM node:20.10.0-bookworm AS user-dictionary

WORKDIR /app
RUN wget https://github.com/jpreprocess/jpreprocess/releases/download/v0.6.3/x86_64-unknown-linux-gnu-.zip \
    && unzip x86_64-unknown-linux-gnu-.zip \
    && rm x86_64-unknown-linux-gnu-.zip

COPY ./data/dict.csv ./

RUN ./dict_tools build -u lindera dict.csv user-dictionary.bin

FROM gcr.io/distroless/nodejs20-debian12:nonroot@sha256:015be521134f97b5f2b4c1543615eb4be907fadc8c6a52e60fd0c18f7cda0337 AS runner
WORKDIR /app
ENV NODE_ENV=production
COPY ./package.json ./
COPY --from=builder /app/dist/ ./dist/
COPY --from=deps /app/node_modules/ ./node_modules/
COPY --from=model-fetch /app/ ./model/
COPY --from=user-dictionary /app/ ./model/

ENV USER_DICTIONARY=model/user-dictionary.bin
CMD ["dist/main.js"]
