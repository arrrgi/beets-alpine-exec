# Changelog

## [0.8.2](https://github.com/arrrgi/beets-alpine-exec/compare/v0.8.1...v0.8.2) (2024-01-28)


### Bug Fixes

* 🔧 refactor to support Git sourced version of Beets ([#185](https://github.com/arrrgi/beets-alpine-exec/issues/185)) ([03c7bb5](https://github.com/arrrgi/beets-alpine-exec/commit/03c7bb5cf0f2315a1611a54f4d657dfe74cba035))
* push images to registry as final step ([e6edfcb](https://github.com/arrrgi/beets-alpine-exec/commit/e6edfcbfecb53b77a9ab155dbceebc79956f4319))
* swap push and load logic for workflow ([e37d28c](https://github.com/arrrgi/beets-alpine-exec/commit/e37d28cf0cbdae33149233ba06fae787a6780766))

## [0.8.1](https://github.com/arrrgi/beets-alpine-exec/compare/v0.8.0...v0.8.1) (2023-11-30)


### Bug Fixes

* 🚑️ change devcontainer variant to support Python 3.12 ([95a5014](https://github.com/arrrgi/beets-alpine-exec/commit/95a50147fbc8d1c3e43d95cd3e37cfeaf4e45e3c))
* 🚑️ update poetry install params for devcontainer build def ([70bf51c](https://github.com/arrrgi/beets-alpine-exec/commit/70bf51c068ce028a8c57c4aed4698b908ffc1b6c))

## [0.8.0](https://github.com/arrrgi/beets-alpine-exec/compare/v0.7.2...v0.8.0) (2023-08-06)


### Features

* ✨ add container build spec and dependancy tooling ([0ca6cd8](https://github.com/arrrgi/beets-alpine-exec/commit/0ca6cd80ecd8f5c08157d7413fa1aacc8a2af1c3))
* add useful YAML extension to Devcontainer ([be5600c](https://github.com/arrrgi/beets-alpine-exec/commit/be5600c060fadd0218fd2d027fd95610b32bc42c))
* **deps:** pin Alpine base image with hash ([#47](https://github.com/arrrgi/beets-alpine-exec/issues/47)) ([4a89ea7](https://github.com/arrrgi/beets-alpine-exec/commit/4a89ea705b2c2d587ae1c81e11c74b45058afb2f))
* ensure latest tag is available on images from main ([#34](https://github.com/arrrgi/beets-alpine-exec/issues/34)) ([7856da7](https://github.com/arrrgi/beets-alpine-exec/commit/7856da7fb0bf37c1f8e5aef040eb4e93c2609838))


### Bug Fixes

* 🐛 include Chromaprint build files and revert Pillow version ([#54](https://github.com/arrrgi/beets-alpine-exec/issues/54)) ([d8f055a](https://github.com/arrrgi/beets-alpine-exec/commit/d8f055a5da68bb043902958472159479beade78e))
* 🐛 update entrypoint to correct path ([#52](https://github.com/arrrgi/beets-alpine-exec/issues/52)) ([5d4c9dc](https://github.com/arrrgi/beets-alpine-exec/commit/5d4c9dc96decd7e5b16dbc8a2f04a04c446327e3))
* 🐛 update Poetry and Beets package dependencies ([#31](https://github.com/arrrgi/beets-alpine-exec/issues/31)) ([cdfde7a](https://github.com/arrrgi/beets-alpine-exec/commit/cdfde7a6bf0cd96fdb2b2a60955a5c35c1bc943f))


### Documentation

* 📝 add limited documentation and license ([186e034](https://github.com/arrrgi/beets-alpine-exec/commit/186e034711a074a42de7a3861de952a68b9feaf1))

## [0.7.2](https://github.com/arrrgi/beets-alpine-exec/compare/v0.7.1...v0.7.2) (2023-08-06)


### Bug Fixes

* 🐛 include Chromaprint build files and revert Pillow version ([#54](https://github.com/arrrgi/beets-alpine-exec/issues/54)) ([d8f055a](https://github.com/arrrgi/beets-alpine-exec/commit/d8f055a5da68bb043902958472159479beade78e))

## [0.7.1](https://github.com/arrrgi/beets-alpine-exec/compare/v0.7.0...v0.7.1) (2023-08-06)


### Bug Fixes

* 🐛 update entrypoint to correct path ([#52](https://github.com/arrrgi/beets-alpine-exec/issues/52)) ([5d4c9dc](https://github.com/arrrgi/beets-alpine-exec/commit/5d4c9dc96decd7e5b16dbc8a2f04a04c446327e3))

## [0.7.0](https://github.com/arrrgi/beets-alpine-exec/compare/v0.6.0...v0.7.0) (2023-07-26)


### Features

* **deps:** pin Alpine base image with hash ([#47](https://github.com/arrrgi/beets-alpine-exec/issues/47)) ([4a89ea7](https://github.com/arrrgi/beets-alpine-exec/commit/4a89ea705b2c2d587ae1c81e11c74b45058afb2f))

## [0.6.0](https://github.com/arrrgi/beets-alpine-exec/compare/v0.5.1...v0.6.0) (2023-07-26)


### Features

* ✨ add container build spec and dependancy tooling ([0ca6cd8](https://github.com/arrrgi/beets-alpine-exec/commit/0ca6cd80ecd8f5c08157d7413fa1aacc8a2af1c3))
* add useful YAML extension to Devcontainer ([be5600c](https://github.com/arrrgi/beets-alpine-exec/commit/be5600c060fadd0218fd2d027fd95610b32bc42c))
* ensure latest tag is available on images from main ([#34](https://github.com/arrrgi/beets-alpine-exec/issues/34)) ([7856da7](https://github.com/arrrgi/beets-alpine-exec/commit/7856da7fb0bf37c1f8e5aef040eb4e93c2609838))


### Bug Fixes

* 🐛 update Poetry and Beets package dependencies ([#31](https://github.com/arrrgi/beets-alpine-exec/issues/31)) ([cdfde7a](https://github.com/arrrgi/beets-alpine-exec/commit/cdfde7a6bf0cd96fdb2b2a60955a5c35c1bc943f))


### Documentation

* 📝 add limited documentation and license ([186e034](https://github.com/arrrgi/beets-alpine-exec/commit/186e034711a074a42de7a3861de952a68b9feaf1))

## [0.5.1](https://github.com/arrrgi/beets-alpine-exec/compare/v0.5.0...v0.5.1) (2023-07-26)


### Bug Fixes

* 🐛 update Poetry and Beets package dependencies ([#31](https://github.com/arrrgi/beets-alpine-exec/issues/31)) ([cdfde7a](https://github.com/arrrgi/beets-alpine-exec/commit/cdfde7a6bf0cd96fdb2b2a60955a5c35c1bc943f))

## [0.5.0](https://github.com/arrrgi/beets-alpine-exec/compare/v0.4.0...v0.5.0) (2023-02-19)


### Features

* ✨ add container build spec and dependancy tooling ([0ca6cd8](https://github.com/arrrgi/beets-alpine-exec/commit/0ca6cd80ecd8f5c08157d7413fa1aacc8a2af1c3))
* add useful YAML extension to Devcontainer ([be5600c](https://github.com/arrrgi/beets-alpine-exec/commit/be5600c060fadd0218fd2d027fd95610b32bc42c))


### Documentation

* 📝 add limited documentation and license ([186e034](https://github.com/arrrgi/beets-alpine-exec/commit/186e034711a074a42de7a3861de952a68b9feaf1))

## 0.2.0 (2023-02-19)

### Feat

- ✨ add container build spec and dependancy tooling
