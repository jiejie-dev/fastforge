## 0.6.1

 - **FIX**: Fixed android builder not supporting flavor as upper case. [#134](https://github.com/fastforgedev/fastforge/issues/134) ([#197](https://github.com/fastforgedev/fastforge/issues/197)). ([fca13756](https://github.com/fastforgedev/fastforge/commit/fca13756aacbe95c46be9f71168325084817836f))
 - **FIX**: Unhandled exception Null check operator used on a null value ([#159](https://github.com/fastforgedev/fastforge/issues/159)). ([bacaf33a](https://github.com/fastforgedev/fastforge/commit/bacaf33a41e7f6d2aa31888e75c32220f6de0736))
 - **FIX**: invalid windows build directory above 3.16.0 or 3.15.0-pre ([#149](https://github.com/fastforgedev/fastforge/issues/149)). ([0403ec7f](https://github.com/fastforgedev/fastforge/commit/0403ec7f2bebac6e4190c6a420c3fb5f7f23e282))
 - **FEAT**: Add additional debug prints for argument handling in AppBuilder. ([343b1538](https://github.com/fastforgedev/fastforge/commit/343b15382611b204f9995e203c86df28edfd9d3d))
 - **FEAT**: Add debug prints for argument merging in AppBuilder. ([145224f4](https://github.com/fastforgedev/fastforge/commit/145224f4f3fbb996e582a01d99d1dfa5f3e1249a))
 - **FEAT**: Enhance argument merging (override dart-define) in AppBuilder for build configuration. ([7f285014](https://github.com/fastforgedev/fastforge/commit/7f285014182fc437b5c69882a3ce0d90ad4c8b40))
 - **FEAT**: add ohos support to flutter_app_builder. ([1337fbb8](https://github.com/fastforgedev/fastforge/commit/1337fbb875d3895a00d4b39321f2aa85f0065358))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))

## 0.6.0

* feat: Support ohos platform.

## 0.4.6

* chore: Bump version to 0.4.6 to match main package

## 0.4.5

* bump `shell_executor` to 0.1.6

## 0.4.4

* feat: macOS builder support flavor arg. #133
* fix: Fixed android builder not supporting flavor as upper case. (#197)

## 0.4.2

* some fixes

## 0.3.7

* fix: Unhandled exception Null check operator used on a null value #159

## 0.3.6

* bump `shell_executor` to 0.1.5
* fix: windows build failing due to invalid path in Flutter v3.15.0+ #149

## 0.3.4

* bump `shell_executor` to 0.1.4

## 0.3.3

* [apk-builer] fix apk not found 

## 0.3.2

* Update dart sdk version to ">=2.16.0 <4.0.0"

## 0.3.1

* Bump `shell_executor` to 0.1.2.

## 0.3.0

* Update a dependency to the latest release.

## 0.2.8

* fix iOS builder adds export build argument check error

## 0.2.7

* iOS builder adds export build argument check

## 0.2.5

* Use `shell_executor` to execute commands
* Support linux arm64

## 0.2.3

* Downgrade pubspec_parse to 1.1.0

## 0.2.1

* fix build_args map entries value may null #64
* Add dart-define `FLUTTER_BUILD_NAME` and `FLUTTER_BUILD_NUMBER` when building #65

## 0.1.8

* [aab maker] support flavor arg #46

## 0.1.7

* Change parameter `cleanOnceBeforeBuild` to `cleanBeforeBuild`

## 0.1.2

* `dart-define` arg support multi values.

## 0.1.0

* First release.
