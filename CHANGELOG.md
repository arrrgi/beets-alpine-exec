# Changelog

## [1.0.0](https://github.com/arrrgi/beets-alpine-exec/compare/v0.11.0...v1.0.0) (2025-05-15)


### ⚠ BREAKING CHANGES

* **build:** switch tooling to UV ([#376](https://github.com/arrrgi/beets-alpine-exec/issues/376))

### Bug Fixes

* rename Python stage in Dockerfile for clarity ([#373](https://github.com/arrrgi/beets-alpine-exec/issues/373)) ([6faea27](https://github.com/arrrgi/beets-alpine-exec/commit/6faea2739a7ec061e63f5d29c706b06d2207727e))
* switch Python base image to alpine for smaller image size ([#372](https://github.com/arrrgi/beets-alpine-exec/issues/372)) ([04b0a0d](https://github.com/arrrgi/beets-alpine-exec/commit/04b0a0da69dd80540c698e89725d37675eba10cf))
* update Python and Poetry versions to match project requirements ([#371](https://github.com/arrrgi/beets-alpine-exec/issues/371)) ([b49243a](https://github.com/arrrgi/beets-alpine-exec/commit/b49243aef9b435481ccf492dda4adfbc7c8a3576))


### Code Refactoring

* **build:** switch tooling to UV ([#376](https://github.com/arrrgi/beets-alpine-exec/issues/376)) ([15d1f30](https://github.com/arrrgi/beets-alpine-exec/commit/15d1f30bb2df160e4811194fc9430fa06315a6df))

## [0.11.0](https://github.com/arrrgi/beets-alpine-exec/compare/v0.10.2...v0.11.0) (2025-05-12)


### Features

* update beets to v2.3.0 ([#367](https://github.com/arrrgi/beets-alpine-exec/issues/367)) ([4341991](https://github.com/arrrgi/beets-alpine-exec/commit/43419915ee5448528d7e671cbf23505668e1f72b))

## [0.10.2](https://github.com/arrrgi/beets-alpine-exec/compare/v0.10.1...v0.10.2) (2024-12-16)


### Bug Fixes

* downgrade and pin Python to 3.12.8 until aifc module available ([18861f5](https://github.com/arrrgi/beets-alpine-exec/commit/18861f5964826683e1a599d5bce11c827f86dab7))

## [0.10.1](https://github.com/arrrgi/beets-alpine-exec/compare/v0.10.0...v0.10.1) (2024-12-14)


### Bug Fixes

* 🚑️ revert Python version as aifc module now deprecated ([#300](https://github.com/arrrgi/beets-alpine-exec/issues/300)) ([17fc52f](https://github.com/arrrgi/beets-alpine-exec/commit/17fc52fddf0dd3175768fcc61eb3d841bd276569))

## [0.10.0](https://github.com/arrrgi/beets-alpine-exec/compare/v0.9.1...v0.10.0) (2024-11-05)


### Features

* ✨ add container build spec and dependancy tooling ([0ca6cd8](https://github.com/arrrgi/beets-alpine-exec/commit/0ca6cd80ecd8f5c08157d7413fa1aacc8a2af1c3))
* add useful YAML extension to Devcontainer ([be5600c](https://github.com/arrrgi/beets-alpine-exec/commit/be5600c060fadd0218fd2d027fd95610b32bc42c))
* **deps:** pin Alpine base image with hash ([#47](https://github.com/arrrgi/beets-alpine-exec/issues/47)) ([4a89ea7](https://github.com/arrrgi/beets-alpine-exec/commit/4a89ea705b2c2d587ae1c81e11c74b45058afb2f))
* ensure latest tag is available on images from main ([#34](https://github.com/arrrgi/beets-alpine-exec/issues/34)) ([7856da7](https://github.com/arrrgi/beets-alpine-exec/commit/7856da7fb0bf37c1f8e5aef040eb4e93c2609838))
* update beets and build dependency versions ([#205](https://github.com/arrrgi/beets-alpine-exec/issues/205)) ([e906db9](https://github.com/arrrgi/beets-alpine-exec/commit/e906db90d5fb7ead1c2cd87ae017d066e1ef21a2))


### Bug Fixes

* 🐛 include Chromaprint build files and revert Pillow version ([#54](https://github.com/arrrgi/beets-alpine-exec/issues/54)) ([d8f055a](https://github.com/arrrgi/beets-alpine-exec/commit/d8f055a5da68bb043902958472159479beade78e))
* 🐛 update entrypoint to correct path ([#52](https://github.com/arrrgi/beets-alpine-exec/issues/52)) ([5d4c9dc](https://github.com/arrrgi/beets-alpine-exec/commit/5d4c9dc96decd7e5b16dbc8a2f04a04c446327e3))
* 🐛 update Poetry and Beets package dependencies ([#31](https://github.com/arrrgi/beets-alpine-exec/issues/31)) ([cdfde7a](https://github.com/arrrgi/beets-alpine-exec/commit/cdfde7a6bf0cd96fdb2b2a60955a5c35c1bc943f))
* 🐛 updates cosign action and version to fix attestation ([#209](https://github.com/arrrgi/beets-alpine-exec/issues/209)) ([074df99](https://github.com/arrrgi/beets-alpine-exec/commit/074df9943493489af79403e23c83f393485f4989))
* 👷 update actions and remove redundant steps ([#211](https://github.com/arrrgi/beets-alpine-exec/issues/211)) ([286f6c4](https://github.com/arrrgi/beets-alpine-exec/commit/286f6c45ffe3580f54fcab41046e0dfcd684804b))
* 🔧 refactor to support Git sourced version of Beets ([#185](https://github.com/arrrgi/beets-alpine-exec/issues/185)) ([03c7bb5](https://github.com/arrrgi/beets-alpine-exec/commit/03c7bb5cf0f2315a1611a54f4d657dfe74cba035))
* 🚑️ change devcontainer variant to support Python 3.12 ([95a5014](https://github.com/arrrgi/beets-alpine-exec/commit/95a50147fbc8d1c3e43d95cd3e37cfeaf4e45e3c))
* 🚑️ update poetry install params for devcontainer build def ([70bf51c](https://github.com/arrrgi/beets-alpine-exec/commit/70bf51c068ce028a8c57c4aed4698b908ffc1b6c))
* migrate release please action to new org ([#219](https://github.com/arrrgi/beets-alpine-exec/issues/219)) ([cb56e3b](https://github.com/arrrgi/beets-alpine-exec/commit/cb56e3b626ee51b293ea182e3e607273c8cb8d69))
* push images to registry as final step ([e6edfcb](https://github.com/arrrgi/beets-alpine-exec/commit/e6edfcbfecb53b77a9ab155dbceebc79956f4319))
* swap push and load logic for workflow ([e37d28c](https://github.com/arrrgi/beets-alpine-exec/commit/e37d28cf0cbdae33149233ba06fae787a6780766))
* update build pipeline to ignore cosign prompt ([#210](https://github.com/arrrgi/beets-alpine-exec/issues/210)) ([752f5d5](https://github.com/arrrgi/beets-alpine-exec/commit/752f5d5667cabcb8adc288d813291de0636a39a2))


### Documentation

* 📝 add limited documentation and license ([186e034](https://github.com/arrrgi/beets-alpine-exec/commit/186e034711a074a42de7a3861de952a68b9feaf1))

## [0.9.1](https://github.com/arrrgi/beets-alpine-exec/compare/v0.9.0...v0.9.1) (2024-11-04)


### Bug Fixes

* migrate release please action to new org ([#219](https://github.com/arrrgi/beets-alpine-exec/issues/219)) ([cb56e3b](https://github.com/arrrgi/beets-alpine-exec/commit/cb56e3b626ee51b293ea182e3e607273c8cb8d69))

## [0.9.0](https://github.com/arrrgi/beets-alpine-exec/compare/v0.8.2...v0.9.0) (2024-07-18)


### Features

* update beets and build dependency versions ([#205](https://github.com/arrrgi/beets-alpine-exec/issues/205)) ([e906db9](https://github.com/arrrgi/beets-alpine-exec/commit/e906db90d5fb7ead1c2cd87ae017d066e1ef21a2))


### Bug Fixes

* 🐛 updates cosign action and version to fix attestation ([#209](https://github.com/arrrgi/beets-alpine-exec/issues/209)) ([074df99](https://github.com/arrrgi/beets-alpine-exec/commit/074df9943493489af79403e23c83f393485f4989))
* 👷 update actions and remove redundant steps ([#211](https://github.com/arrrgi/beets-alpine-exec/issues/211)) ([286f6c4](https://github.com/arrrgi/beets-alpine-exec/commit/286f6c45ffe3580f54fcab41046e0dfcd684804b))
* update build pipeline to ignore cosign prompt ([#210](https://github.com/arrrgi/beets-alpine-exec/issues/210)) ([752f5d5](https://github.com/arrrgi/beets-alpine-exec/commit/752f5d5667cabcb8adc288d813291de0636a39a2))

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
