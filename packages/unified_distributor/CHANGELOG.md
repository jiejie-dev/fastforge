## 0.2.7

 - **REFACTOR**: Migrate fastforge and flutter_distributor to unified_distributor. ([08cc8a0c](https://github.com/fastforgedev/fastforge/commit/08cc8a0c9f14c7137578d1f3c78b4ecf72026fbd))
 - **FEAT**: Add support for AppGallery by including app ID option in publish command. ([06d0cb04](https://github.com/fastforgedev/fastforge/commit/06d0cb0465dbb2f878adc5d88c51cd97704b4651))
 - **FEAT**: Add support for `minio` publisher and update version to 0.6.3. ([12ff2701](https://github.com/fastforgedev/fastforge/commit/12ff2701f2cb991b8c6cbc397ca0b4f3216868c0))
 - **FEAT**: Support `app-version` argument to override version from pubspec.yaml (future versions will not read from pubspec.yaml). ([f4455e24](https://github.com/fastforgedev/fastforge/commit/f4455e2482fd181c54567b5a2badcb2c28b2e5ff))
 - **FEAT**: add OHOS support to package command. ([c757c855](https://github.com/fastforgedev/fastforge/commit/c757c8555aa195a84b7f199245c9fd9ae7bb5fee))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))

## 0.2.6

* feat: add comprehensive pgyer upload parameters support #297

## 0.2.5

* MakeDebConfig Add StartupWMClass support #290
* feat: Add AppGallery publisher support

## 0.2.4

* fix: The `savekey-prefix` argument in the minio publisher is now properly ignored when empty

## 0.2.3

* feat: Support `minio` publisher

## 0.2.2

* feat: Support `app-version` argument to override version from pubspec.yaml (future versions will not read from pubspec.yaml)

## 0.2.1

* GitHub publisher supports `repo` argument to replace `repo-owner` and `repo-name` arguments
* GitHub publisher supports `release-draft` and `release-prerelease` arguments
* Remove AppCenter publisher

## 0.2.0

* feat: Support ohos platform.

## 0.1.1

- Added a note to the CLI to inform users that `flutter_distributor` has been renamed to `fastforge`.

## 0.1.0

- Renamed from `flutter_distributor` to `unified_distributor` to prepare for supporting more native or cross-platform frameworks.
