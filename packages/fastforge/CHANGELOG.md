## 0.6.8

 - **REFACTOR**: Migrate fastforge and flutter_distributor to unified_distributor. ([08cc8a0c](https://github.com/fastforgedev/fastforge/commit/08cc8a0c9f14c7137578d1f3c78b4ecf72026fbd))
 - **FEAT**: Add welcome message to Fastforge CLI. ([c5a11c61](https://github.com/fastforgedev/fastforge/commit/c5a11c61ecc59b2d9b82e347c689ecd52d166ed2))
 - **FEAT**: Add support for `minio` publisher and update version to 0.6.3. ([12ff2701](https://github.com/fastforgedev/fastforge/commit/12ff2701f2cb991b8c6cbc397ca0b4f3216868c0))
 - **FEAT**: Support `app-version` argument to override version from pubspec.yaml (future versions will not read from pubspec.yaml). ([f4455e24](https://github.com/fastforgedev/fastforge/commit/f4455e2482fd181c54567b5a2badcb2c28b2e5ff))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))

## 0.6.6

* feat: add comprehensive pgyer upload parameters support #297

## 0.6.5

* MakeDebConfig Add StartupWMClass support #290
* feat: Add AppGallery publisher support

## 0.6.4

* fix: The `savekey-prefix` argument in the minio publisher is now properly ignored when empty

## 0.6.3

* feat: Support `minio` publisher

## 0.6.2

* feat: Support `app-version` argument to override version from pubspec.yaml (future versions will not read from pubspec.yaml)

## 0.6.1

* GitHub publisher supports `repo` argument to replace `repo-owner` and `repo-name` arguments
* GitHub publisher supports `release-draft` and `release-prerelease` arguments
* Remove AppCenter publisher

## 0.6.0

* [FIX] Google Play Bundle is uploaded but the result is ignored (#261)
* Better error if entity is not a file otherwise it looks like this: (#266)
* feat: Support ohos platform.

## 0.5.1

* Bump `unified_distributor` to 0.1.1

## 0.5.0

* Keeping version in sync with flutter_distributor

## 0.1.0

* First release.
