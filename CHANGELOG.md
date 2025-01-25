# Changelog

## [0.5.2](https://github.com/discordjs-japan/om/compare/v0.5.1...v0.5.2) (2025-01-25)


### Bug Fixes

* [#708](https://github.com/discordjs-japan/om/issues/708) ([f40ceb0](https://github.com/discordjs-japan/om/commit/f40ceb07dec359c71fb64a835c0e18b6fc26162f))
* update discord url validation to include ptb.discord.com ([#709](https://github.com/discordjs-japan/om/issues/709)) ([f40ceb0](https://github.com/discordjs-japan/om/commit/f40ceb07dec359c71fb64a835c0e18b6fc26162f)), closes [#708](https://github.com/discordjs-japan/om/issues/708)


### Dependencies

* update dependency discord.js to v14.17.2 ([#720](https://github.com/discordjs-japan/om/issues/720)) ([024d392](https://github.com/discordjs-japan/om/commit/024d392d59e4bebc021c879dc1c613c1ca0684ec))
* update dependency discord.js to v14.17.3 ([#726](https://github.com/discordjs-japan/om/issues/726)) ([9a8bd3a](https://github.com/discordjs-japan/om/commit/9a8bd3a9a8fe844f4f3fa74bb4fcaf6db3e2ff00))

## [0.5.1](https://github.com/discordjs-japan/om/compare/v0.5.0...v0.5.1) (2024-11-18)


### Bug Fixes

* make slash commands usable only within the server ([#586](https://github.com/discordjs-japan/om/issues/586)) ([54e7285](https://github.com/discordjs-japan/om/commit/54e728556f0a5aab901a0b4b246b582b9b51c081)), closes [#585](https://github.com/discordjs-japan/om/issues/585)
* set activity with ClientOptions ([#520](https://github.com/discordjs-japan/om/issues/520)) ([85fa8cf](https://github.com/discordjs-japan/om/commit/85fa8cf9f319c5db16d212b02987fcd051cf19fa))
* use built-in EventEmitter typing ([#453](https://github.com/discordjs-japan/om/issues/453)) ([3212a2b](https://github.com/discordjs-japan/om/commit/3212a2b4a0855fc8a5d05df1b07eed0a4afd9d21))


### Dependencies

* update dependency @discordjs/voice to v0.18.0 ([#622](https://github.com/discordjs-japan/om/issues/622)) ([e3c5f4e](https://github.com/discordjs-japan/om/commit/e3c5f4e518eda0ba5a327a66e90877eed28f8cf2))
* update dependency discord.js to v14.16.1 ([#535](https://github.com/discordjs-japan/om/issues/535)) ([0b26f26](https://github.com/discordjs-japan/om/commit/0b26f26d27bad9b102b4459b335314ed25132fd6))
* update dependency discord.js to v14.16.2 ([#548](https://github.com/discordjs-japan/om/issues/548)) ([19caa61](https://github.com/discordjs-japan/om/commit/19caa61f1a0b3089d8d4fad96001982fca5cb48f))
* update dependency discord.js to v14.16.3 ([#568](https://github.com/discordjs-japan/om/issues/568)) ([2064367](https://github.com/discordjs-japan/om/commit/2064367e301583c0877f2004600428576baedf33))
* update dependency sodium-native to v4.2.0 ([#553](https://github.com/discordjs-japan/om/issues/553)) ([f93cab0](https://github.com/discordjs-japan/om/commit/f93cab09c01bba5648d26eed063d1711034e40c8))
* update dependency sodium-native to v4.2.1 ([#582](https://github.com/discordjs-japan/om/issues/582)) ([206a1a2](https://github.com/discordjs-japan/om/commit/206a1a2ae47b88720a8755b4bc7473d0134702f7))
* update dependency sodium-native to v4.2.2 ([#597](https://github.com/discordjs-japan/om/issues/597)) ([d6ac2a7](https://github.com/discordjs-japan/om/commit/d6ac2a787c32f393303e461606bdff41e090feb9))
* update dependency sodium-native to v4.3.0 ([#612](https://github.com/discordjs-japan/om/issues/612)) ([41cc957](https://github.com/discordjs-japan/om/commit/41cc957c4a03b2c9e29dad7b10c08bddc40a6363))
* update dependency sodium-native to v4.3.1 ([#618](https://github.com/discordjs-japan/om/issues/618)) ([100f28f](https://github.com/discordjs-japan/om/commit/100f28ffde83d79f7a5d4bbf16d66c5906818044))


### Reverts

* "resolve type issues" ([#536](https://github.com/discordjs-japan/om/issues/536)) ([cabc723](https://github.com/discordjs-japan/om/commit/cabc7238ebefa6c1037da9980ea3bb75cefb08ae))

## [0.5.0](https://github.com/discordjs-japan/om/compare/v0.4.1...v0.5.0) (2024-06-10)


### Features

* assign process.title ([#403](https://github.com/discordjs-japan/om/issues/403)) ([3a4740d](https://github.com/discordjs-japan/om/commit/3a4740db0feea50e01e02de0c934f115d8cf77d8))
* Don't start speaking when humans are speaking ([#412](https://github.com/discordjs-japan/om/issues/412)) ([cd96f31](https://github.com/discordjs-japan/om/commit/cd96f3190bd6fcc14bffbcbbf9e3cca50bfd7b87))


### Bug Fixes

* delete Pipeline#playing when idle ([#407](https://github.com/discordjs-japan/om/issues/407)) ([6474ad4](https://github.com/discordjs-japan/om/commit/6474ad4106ebdec389b0471b8f320018c64c4a3c))
* fix timing to cache Pipeline ([#405](https://github.com/discordjs-japan/om/issues/405)) ([d78bd9c](https://github.com/discordjs-japan/om/commit/d78bd9c0498ae453e980eef3e3332c580ca4b615))
* skip playing if there is no readable content ([#408](https://github.com/discordjs-japan/om/issues/408)) ([bbce63a](https://github.com/discordjs-japan/om/commit/bbce63a551f575310e38624b7eb8a87bbf0e19fe))


### Dependencies

* update dependency discord.js to v14.15.3 ([#415](https://github.com/discordjs-japan/om/issues/415)) ([b00e51a](https://github.com/discordjs-japan/om/commit/b00e51a216cb22f1ba9abdb409418a51fec18e86))

## [0.4.1](https://github.com/discordjs-japan/om/compare/v0.4.0...v0.4.1) (2024-05-27)


### Dependencies

* update dependency @discordjs-japan/om-syrinx to v0.4.1 ([#393](https://github.com/discordjs-japan/om/issues/393)) ([1654888](https://github.com/discordjs-japan/om/commit/1654888a930d6d8e543f1cf6408273989c5b0525))

## [0.4.0](https://github.com/discordjs-japan/om/compare/v0.3.0...v0.4.0) (2024-05-25)


### Features

* Add om-related words ([#384](https://github.com/discordjs-japan/om/issues/384)) ([3fa3a0a](https://github.com/discordjs-japan/om/commit/3fa3a0a1d6fbdc833cb3e157b965970982de4961))
* add version command ([#379](https://github.com/discordjs-japan/om/issues/379)) ([6b45482](https://github.com/discordjs-japan/om/commit/6b45482300509a9466c82e6f5ab398902b223b9a))
* change message on skip ([#380](https://github.com/discordjs-japan/om/issues/380)) ([2d1693c](https://github.com/discordjs-japan/om/commit/2d1693c7c77ca60c44c0188bf206e48651de3723)), closes [#245](https://github.com/discordjs-japan/om/issues/245)
* upgrade to om-syrinx ([#369](https://github.com/discordjs-japan/om/issues/369)) ([62ad6c4](https://github.com/discordjs-japan/om/commit/62ad6c48be412f000af8c92bd05325dd5da5b19d))


### Bug Fixes

* fix emoji printer ([#387](https://github.com/discordjs-japan/om/issues/387)) ([a391a88](https://github.com/discordjs-japan/om/commit/a391a889ae2590744391b996989bf3b3431f5962))
* followUp error if replied ([#389](https://github.com/discordjs-japan/om/issues/389)) ([2a0abdc](https://github.com/discordjs-japan/om/commit/2a0abdccfc093e01d9e39acb5f35526e8359a00d))
* Increase the cost for "om" ([#388](https://github.com/discordjs-japan/om/issues/388)) ([ca2172b](https://github.com/discordjs-japan/om/commit/ca2172bb90a44ed64f82781017b843eed41d6ac0))


### Dependencies

* bye discordjs/opus ([#382](https://github.com/discordjs-japan/om/issues/382)) ([09d462c](https://github.com/discordjs-japan/om/commit/09d462ce4641783fa4c59fc8bf20d416c3eac96b))
* update dependency @discordjs-japan/om-syrinx to v0.4.0 ([#373](https://github.com/discordjs-japan/om/issues/373)) ([cfca563](https://github.com/discordjs-japan/om/commit/cfca563c880cac5fadb33d5bed3891b374714ac3))
* update dependency @discordjs/voice to v0.17.0 ([#333](https://github.com/discordjs-japan/om/issues/333)) ([1c03f50](https://github.com/discordjs-japan/om/commit/1c03f50d9892e64475707d76b8bb9682b475c6c9))
* update dependency discord.js to v14.15.1 ([#334](https://github.com/discordjs-japan/om/issues/334)) ([5129d00](https://github.com/discordjs-japan/om/commit/5129d00436be91f494fa8038f3e8acbecbba521a))
* update dependency discord.js to v14.15.2 ([#336](https://github.com/discordjs-japan/om/issues/336)) ([78434f3](https://github.com/discordjs-japan/om/commit/78434f3e136e2461f3226057b6ca3cca989eaf47))
* update dependency sodium-native to v4.0.10 ([#224](https://github.com/discordjs-japan/om/issues/224)) ([3fabb38](https://github.com/discordjs-japan/om/commit/3fabb389842379059d44a2d3ad84d83d1870f23c))
* update dependency sodium-native to v4.0.6 ([#179](https://github.com/discordjs-japan/om/issues/179)) ([1def342](https://github.com/discordjs-japan/om/commit/1def342d46ea50c3add7398b27a3cf94c7068b8d))
* update dependency sodium-native to v4.0.7 ([#200](https://github.com/discordjs-japan/om/issues/200)) ([5081233](https://github.com/discordjs-japan/om/commit/50812338e95bfdbf57a00676de61941a5ff876b9))
* update dependency sodium-native to v4.0.8 ([#203](https://github.com/discordjs-japan/om/issues/203)) ([4550799](https://github.com/discordjs-japan/om/commit/45507994da90e88e22dbc6cccd603543bc0982a8))
* update dependency sodium-native to v4.0.9 ([#218](https://github.com/discordjs-japan/om/issues/218)) ([e694c82](https://github.com/discordjs-japan/om/commit/e694c8212151635bc1dd9890ab53f5c7d455d6d6))
* update dependency sodium-native to v4.1.0 ([#266](https://github.com/discordjs-japan/om/issues/266)) ([1ea14c5](https://github.com/discordjs-japan/om/commit/1ea14c5430059609f097e5fa69c953584673fd26))
* update dependency sodium-native to v4.1.1 ([#267](https://github.com/discordjs-japan/om/issues/267)) ([c4fe870](https://github.com/discordjs-japan/om/commit/c4fe8701d69e650f8abaf7829d78f4176427ec2a))
* Use `github:` for node-altjtalk-binding ([#284](https://github.com/discordjs-japan/om/issues/284)) ([5fa030c](https://github.com/discordjs-japan/om/commit/5fa030c81f0f4b219f15f9e055d2bebdacb2af1c))

## [0.3.0](https://github.com/discordjs-japan/om/compare/v0.2.0...v0.3.0) (2024-01-14)


### Features

* Centralized env ([#119](https://github.com/discordjs-japan/om/issues/119)) ([403d56c](https://github.com/discordjs-japan/om/commit/403d56c7d0f63530582586120ca6c05cd6ab9e4c))
* clean command mention ([#144](https://github.com/discordjs-japan/om/issues/144)) ([b074470](https://github.com/discordjs-japan/om/commit/b074470fa8bb6fe38b94fd21d5ffc93b8e00bdd0)), closes [#143](https://github.com/discordjs-japan/om/issues/143)
* ignore paren content ([#148](https://github.com/discordjs-japan/om/issues/148)) ([cc83229](https://github.com/discordjs-japan/om/commit/cc832293a07fc9c4f8ad44ea88aa5e1f4492045d))
* user dictionary ([#115](https://github.com/discordjs-japan/om/issues/115)) ([0f016a9](https://github.com/discordjs-japan/om/commit/0f016a90cf12e8bd6ce3ed16491cd9f72c521e2b))
* Well documented env ([#120](https://github.com/discordjs-japan/om/issues/120)) ([e0691ba](https://github.com/discordjs-japan/om/commit/e0691ba9dde1b2d90fd4690727ee5034b4a49be9))


### Bug Fixes

* just omit discord non-channel url ([#149](https://github.com/discordjs-japan/om/issues/149)) ([7d225f8](https://github.com/discordjs-japan/om/commit/7d225f8cacad0c1044ecc529acff73354be81227)), closes [#147](https://github.com/discordjs-japan/om/issues/147)


### Dependencies

* update dependency sodium-native to v4.0.5 ([#132](https://github.com/discordjs-japan/om/issues/132)) ([abc557c](https://github.com/discordjs-japan/om/commit/abc557c67a39d1bdb15b30aba1bf623bc9652196))
* Update node-altjtalk-binding to v0.2.0 ([#114](https://github.com/discordjs-japan/om/issues/114)) ([9f2b5c9](https://github.com/discordjs-japan/om/commit/9f2b5c93273e717fbde21625ac6986b2aaf578c7))

## [0.2.0](https://github.com/discordjs-japan/om/compare/v0.1.2...v0.2.0) (2023-12-25)


### Features

* add skip command ([#81](https://github.com/discordjs-japan/om/issues/81)) ([9ba6333](https://github.com/discordjs-japan/om/commit/9ba633357d477c281703ff3d17693e487238b9d7)), closes [#80](https://github.com/discordjs-japan/om/issues/80)
* clean text before synthesis ([#87](https://github.com/discordjs-japan/om/issues/87)) ([2044edb](https://github.com/discordjs-japan/om/commit/2044edb34a9cf1dd94b46f5d31438f5933bc8eaf))
* leave the voice channel when alone ([#91](https://github.com/discordjs-japan/om/issues/91)) ([2c89e64](https://github.com/discordjs-japan/om/commit/2c89e64cc17a9465273ccb4f492d69b512bf0ee3))
* return varied synthesis options by primitive rng ([#76](https://github.com/discordjs-japan/om/issues/76)) ([386aff8](https://github.com/discordjs-japan/om/commit/386aff81fa35434c3bf27858fc1cb89c3a9e22b7))
* Show version as an activity ([#75](https://github.com/discordjs-japan/om/issues/75)) ([84ad44e](https://github.com/discordjs-japan/om/commit/84ad44ef8626e74075c48631d33be9a84696770b))


### Bug Fixes

* change default dictionary/model path to relative ([#83](https://github.com/discordjs-japan/om/issues/83)) ([c997526](https://github.com/discordjs-japan/om/commit/c9975266824652cf2a222945a4255fc9147a8c6f))
* default import SimpleMarkdown ([#95](https://github.com/discordjs-japan/om/issues/95)) ([d7a1511](https://github.com/discordjs-japan/om/commit/d7a1511e9001774507071537550a9532bc7b2301))
* fix the condition to leave the channel ([#97](https://github.com/discordjs-japan/om/issues/97)) ([ea16c35](https://github.com/discordjs-japan/om/commit/ea16c35a8b4158332b62228e2f7c0c408f09220e))
* reject joining empty channel ([#98](https://github.com/discordjs-japan/om/issues/98)) ([7d17035](https://github.com/discordjs-japan/om/commit/7d170350bbe1560b952404738e1e2e71d7c47835))


### Dependencies

* use femshima/opus ([#88](https://github.com/discordjs-japan/om/issues/88)) ([366230c](https://github.com/discordjs-japan/om/commit/366230c6b2cd583ecc66aa41fc8a2925032da36b))

## [0.1.2](https://github.com/discordjs-japan/om/compare/v0.1.1...v0.1.2) (2023-12-18)


### Bug Fixes

* Change model to tohoku-f01 ([#65](https://github.com/discordjs-japan/om/issues/65)) ([147ba2c](https://github.com/discordjs-japan/om/commit/147ba2cc359e23e9225d81c1faefb24383c6c9b2))
* improper handling voice connection status change ([#54](https://github.com/discordjs-japan/om/issues/54)) ([6bec2ef](https://github.com/discordjs-japan/om/commit/6bec2efcd3d8bac56c0fd866c4b024287af3d5b9))


### Dependencies

* update altjtalk to v0.1.5 ([#61](https://github.com/discordjs-japan/om/issues/61)) ([0a49443](https://github.com/discordjs-japan/om/commit/0a494435a74ce081090d4efe0995d685c0a47502))
* update node-altjtalk-binding to v0.1.4 ([#58](https://github.com/discordjs-japan/om/issues/58)) ([aa221e0](https://github.com/discordjs-japan/om/commit/aa221e0c735592b341271664be9082db00ab2168))
* update node-altjtalk-binding to v0.1.6 ([#63](https://github.com/discordjs-japan/om/issues/63)) ([566d07f](https://github.com/discordjs-japan/om/commit/566d07f306168678f364c08db9ecb36ddf0f1b02))

## [0.1.1](https://github.com/discordjs-japan/om/compare/v0.1.0...v0.1.1) (2023-12-15)


### Dependencies

* pin dependencies ([#32](https://github.com/discordjs-japan/om/issues/32)) ([8a510df](https://github.com/discordjs-japan/om/commit/8a510df96496461d187c350bfab573605b4a9b1c))
* update dependency @discordjs/voice to v0.16.1 ([#39](https://github.com/discordjs-japan/om/issues/39)) ([20cc92c](https://github.com/discordjs-japan/om/commit/20cc92c6b433c868e4153db24a7e5eeb6a6b6c62))
* update dependency discord.js to v14.14.1 ([#46](https://github.com/discordjs-japan/om/issues/46)) ([0329deb](https://github.com/discordjs-japan/om/commit/0329deba1b18e0e568fc1234b5a641a83abad8d4))
