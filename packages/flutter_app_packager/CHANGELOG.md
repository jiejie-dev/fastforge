## 0.6.6

 - **REFACTOR**: Refactor DMG creation configuration serialization. ([3e469afa](https://github.com/fastforgedev/fastforge/commit/3e469afa96e7378f48fe10ecab6ef4841b1b0d80))
 - **REFACTOR**: Refactor app packager executable config handling. ([12012ac6](https://github.com/fastforgedev/fastforge/commit/12012ac6b5dcda58956208aac44b1b5a9ac48425))
 - **FIX**: can not set icon file when packaging windows exe ([#246](https://github.com/fastforgedev/fastforge/issues/246)). ([ddc5899e](https://github.com/fastforgedev/fastforge/commit/ddc5899e94f11c3bd1058ee70b6826d2b0de8b12))
 - **FIX**(flutter_app_packager): fix build rpm on linux arm64 error ([#204](https://github.com/fastforgedev/fastforge/issues/204)). ([f68dfc9d](https://github.com/fastforgedev/fastforge/commit/f68dfc9d9969881d15f74a907d30cb3048fc1f76))
 - **FIX**: don't block rpm build if metainfo not found ([#202](https://github.com/fastforgedev/fastforge/issues/202)). ([228ce97c](https://github.com/fastforgedev/fastforge/commit/228ce97c780654984c1cd37c17768bb2aa34d092))
 - **FIX**: fix make_dmg_config lost <window> specification ([#120](https://github.com/fastforgedev/fastforge/issues/120)). ([581d7c29](https://github.com/fastforgedev/fastforge/commit/581d7c295d10c30d4e0cdb2888d1ab81a79ee241))
 - **FEAT**: add ohos support to flutter_app_packager. ([46200298](https://github.com/fastforgedev/fastforge/commit/46200298c245730eb9bfbdfaaa1c64ce27ddedcc))
 - **FEAT**: should use correct architecture ([#150](https://github.com/fastforgedev/fastforge/issues/150)). ([190fab56](https://github.com/fastforgedev/fastforge/commit/190fab563a383b20673a7b8c5645d5d0a1dcd31d))
 - **FEAT**: add pkg maker. ([c09182aa](https://github.com/fastforgedev/fastforge/commit/c09182aabd68f8a84510533db930696fa441e3b6))
 - **FEAT**: compress macOS app with 7zip. ([49d86ee1](https://github.com/fastforgedev/fastforge/commit/49d86ee18f08317e464e561967a889ace4e9fc8d))
 - **FEAT**: fix appdmg “icon-size” Specification。 ([#113](https://github.com/fastforgedev/fastforge/issues/113)). ([fd6732ad](https://github.com/fastforgedev/fastforge/commit/fd6732ade25013ddc617798e939cc0101c46d1a0))
 - **FEAT**: apk & app maker support profile mode. ([d10db828](https://github.com/fastforgedev/fastforge/commit/d10db828ba8bc2ca72307cd460a032f82fade09d))
 - **FEAT**: Linux RPM packaging support  ([#101](https://github.com/fastforgedev/fastforge/issues/101)). ([d69eea1f](https://github.com/fastforgedev/fastforge/commit/d69eea1fb6a6c912fb61e7af05a6ea66c86812db))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))

## 0.6.5

* MakeDebConfig Add StartupWMClass support #290

## 0.6.0

* feat: Support ohos platform.

## 0.4.6

* fix(flutter_app_packager): fix build rpm on linux arm64 error (#204)
* feat: `artifact_name` template now supports `has_build_number` variable (#232)
* fix: AppImage mimetype is null (#248)
* fix: can not set icon file when packaging windows exe (#246)

## 0.4.5

* bump `shell_executor` to 0.1.6
* [FIX] Don't block rpm build if metainfo not found #202

## 0.4.4

* [Linux] Add MimeType for appimage and metainfo file support (#195)

## 0.4.2

* some fixes

## 0.3.8

* bump `archive` to 3.4.10

## 0.3.7

* Use correct architecture when making deb #150

## 0.3.6

* bump `shell_executor` to 0.1.5
* bump `msix` to 3.16.6

## 0.3.5

* [deb-maker] Supports custom binary name

## 0.3.4

* bump `shell_executor` to 0.1.4

## 0.3.2

* Update dart sdk version to ">=2.16.0 <4.0.0"
* feat: compress macOS app with 7zip

## 0.3.1

* Add `direct` maker
* [rpm] fix lib/*.so rpath before packaging (#110)
* feat:fix appdmg “icon-size” Specification。 (#113)
* Bump `shell_executor` to 0.1.2.

## 0.3.0

* **FEAT**: apk & app maker support profile mode.
* **FEAT**: Linux RPM packaging support  ([#101](https://github.com/fastforgedev/fastforge/issues/101)).

## 0.2.7

* Feat: Linux RPM packaging support (#101)

## 0.2.6

* [maker-zip] remove packagingDirectory after make

## 0.2.5

* Use `shell_executor` to execute commands
* Merge app makers into this package
* [maker-zip] without using the 7zip command

## 0.2.4

* [dmg maker] Support `code-sign` configuration item.
* [exe maker] Support use custom inno setup `script_template`. #69
* [exe maker] Support use custom installDirName. #67
* [exe maker] Add installer `setupIconFile`, `privilegesRequired` options (#79)
* Downgrade pubspec_parse to 1.1.0
* [exe maker] Set to default 64-bit mode #81

## 0.2.1

* `artifactName` adds `build_name` & `build_number` variables #66

## 0.2.0

* Fix apk, ipa makers copy wrong files #55

## 0.1.9

* [exe maker] MakeExeConfig Add `executable_name` field
* [exe maker] MakeExeConfig Add `display_name` field
* [exe maker] MakeExeConfig Add `create_desktop_icon` field
* [exe maker] MakeExeConfig Add `install_dir_name` field
* [exe maker] MakeExeConfig Add `locales` field
* [exe maker] Support chinese #57 #58

## 0.1.8

* [aab maker] support flavor arg #46

## 0.1.6

* `PowerShell` support.

## 0.1.4

* #22 zip maker supports web platform.

## 0.1.0

* First release.
