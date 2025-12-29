## 0.6.7

 - **REFACTOR**: Migrate fastforge and flutter_distributor to unified_distributor. ([08cc8a0c](https://github.com/fastforgedev/fastforge/commit/08cc8a0c9f14c7137578d1f3c78b4ecf72026fbd))
 - **FIX**(parse_app_package): fix failure to parse `Property List Binary` format. ([302f715b](https://github.com/fastforgedev/fastforge/commit/302f715be6d0bb677ebab544d884f4bc0e064de1))
 - **FIX**: Can't decode gbk encoding issue [#131](https://github.com/fastforgedev/fastforge/issues/131). ([0d3ff0d8](https://github.com/fastforgedev/fastforge/commit/0d3ff0d8c9e1248754019b278f2d793200dc762f))
 - **FEAT**: Support `app-version` argument to override version from pubspec.yaml (future versions will not read from pubspec.yaml). ([f4455e24](https://github.com/fastforgedev/fastforge/commit/f4455e2482fd181c54567b5a2badcb2c28b2e5ff))
 - **FEAT**: add pkg maker. ([c09182aa](https://github.com/fastforgedev/fastforge/commit/c09182aabd68f8a84510533db930696fa441e3b6))
 - **FEAT**: compress macOS app with 7zip. ([49d86ee1](https://github.com/fastforgedev/fastforge/commit/49d86ee18f08317e464e561967a889ace4e9fc8d))
 - **FEAT**: apk & app maker support profile mode. ([d10db828](https://github.com/fastforgedev/fastforge/commit/d10db828ba8bc2ca72307cd460a032f82fade09d))
 - **FEAT**: Linux RPM packaging support  ([#101](https://github.com/fastforgedev/fastforge/issues/101)). ([d69eea1f](https://github.com/fastforgedev/fastforge/commit/d69eea1fb6a6c912fb61e7af05a6ea66c86812db))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))
 - **DOCS**: Add Firebase Hosting and Vercel publishing support. ([ee89718c](https://github.com/fastforgedev/fastforge/commit/ee89718c1c97b632bc4a88c4f6658ecbfa55be28))

## 0.6.6

* feat: add comprehensive pgyer upload parameters support #297

## 0.6.5

* MakeDebConfig Add StartupWMClass support #290
* feat: Add AppGallery publisher support

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

* Added a note to the CLI to inform users that `flutter_distributor` has been renamed to `fastforge`.

## 0.4.6

* fix: fix build rpm on linux arm64 error (#204)
* feat: Use GitHub Actions environment variables as fallback when custom variables are not defined (#217)
* fix: Resolve GooglePlay publishing error (status: 400, message: "This edit has already been committed") (#214)
* feat: Show version check progress in CLI (#218)
* fix: AppImage release fails due to incorrect filename case (should be AppImage not appimage) (#221)
* feat: `artifact_name` template now supports `has_build_number` variable (#232)
* fix: AppImage mimetype is null (#248)
* fix: can not set icon file when packaging windows exe (#246)

## 0.4.5

* bump `shell_executor` to 0.1.6
* fix: don't block rpm build if metainfo not found (#202)
* chore: Support third-party pub mirror sources #201
* [FEAT] Add support for Pacman (Arch Linux) (#198)

## 0.4.4

* fix: Fixed android builder not supporting flavor as upper case. (#197)
* feat: macOS builder support flavor arg. (#196)
* [Linux] Add MimeType for appimage and metainfo file support (#195)
* Support set track for playstore deployment (#185)

## 0.4.3

* Fix the issue of garbled text in parseAppPackage on macOS.

## 0.4.2

* some fixes

## 0.4.1

* [playstore] - Replace `GOOGLE_APPLICATION_CREDENTIALS` to `PLAYSTORE_CREDENTIALS`

## 0.4.0

* fix failure to parse `Property List Binary` format

## 0.3.9

* fix: Can't decode gbk encoding issue #131

## 0.3.8

* bump `archive` to 3.4.10

## 0.3.7

* fix: Unhandled exception Null check operator used on a null value #159
* Use correct architecture when making deb #150

## 0.3.6

* bump `shell_executor` to 0.1.5
* bump `msix` to 3.16.6
* bump `dio` to 5.3.4
* bump `googleapis` to 9.1.0
* fix: windows build failing due to invalid path in Flutter v3.15.0+ #149

## 0.3.5

* [deb-maker] Supports custom binary name

## 0.3.4

* bump `shell_executor` to 0.1.4
* Supports custom `FLUTTER_ROOT` environment variable.
* Support defining environment variables in releases and jobs.

## 0.3.3

* [apk-builer] fix apk not found

## 0.3.2

* Update dart sdk version to ">=2.16.0 <4.0.0"
* feat: compress macOS app with 7zip
* [dmg-maker] Rename `backgroundColor` to `background-color` in `MakeDmgConfig`
* [dmg-maker] fix: fix make_dmg_config lost <window> specification (#120)
* [deb-maker] Fixes #117 install and uninstall errors (#121)
* fix(docs): fix exe make_config.yaml example error
* chore: Optimize msix maker

## 0.3.1

* Add `direct` maker
* [rpm] fix lib/*.so rpath before packaging (#110)
* feat:fix appdmg “icon-size” Specification。 (#113)
* Add `firebase-hosting` publisher.
* Add `vercel` publisher.
* Modify the `publish` method to accept `FileSystemEntity` instead of just `File`
* Add the `workingDirectory` parameter to the `DefaultShellExecutor` and related classes.
* Bump `shell_executor` to 0.1.2.

## 0.3.0

* bump flutter to 3.7
* [exe] add template support for all innosetup 6.x default languages (#102)
* Improve command usability (help texts, null checks, misc) (#106)
* apk & app maker support profile mode.
* flutter_distributor command add version-check flag
* [AppImage] Use appimagetool to bundle AppImage (#109)
* Refactor flutter_distributor

## 0.2.8

* fix iOS builder adds export build argument check error

## 0.2.7

* Feat: Linux RPM packaging support (#101)
* iOS builder adds export build argument check

## 0.2.6

* [maker-zip] remove packagingDirectory after make

## 0.2.5

* Use `shell_executor` to execute commands
* Fix an incorrectly worded message
* Optimize output messages in console
* Support linux arm64
* [maker-zip] without using the 7zip command
* [publisher-pgyer] Upgrade to v2 Api #91 #92

## 0.2.4

* [dmg maker] Support `code-sign` configuration item.
* [exe maker] Support use custom inno setup `script_template`. #69
* [exe maker] Support use custom installDirName. #67
* [exe maker] Add installer `setupIconFile`, `privilegesRequired` options (#79)
* [exe maker] Set to default 64-bit mode #81

## 0.2.2

* Support custom `artifact_name` & `channel`.
* fix build_args map entries value may null #64
* Add dart-define `FLUTTER_BUILD_NAME` and `FLUTTER_BUILD_NUMBER` when building #65
* `artifactName` adds `build_name` & `build_number` variables #66

## 0.2.0

* Add `appcenter` publisher. #13
* Fix apk, ipa makers copy wrong files #55

## 0.1.9

* [exe maker] MakeExeConfig Add `executable_name` field
* [exe maker] MakeExeConfig Add `display_name` field
* [exe maker] MakeExeConfig Add `create_desktop_icon` field
* [exe maker] MakeExeConfig Add `install_dir_name` field
* [exe maker] MakeExeConfig Add `locales` field
* [exe maker] Support chinese #57 #58
* Add msix maker

## 0.1.8

* [aab maker] support flavor arg #46
* Add `appstore` publisher. #45

## 0.1.7

* Change parameter `cleanOnceBeforeBuild` to `cleanBeforeBuild`
* Changed to only clean once before build #41

## 0.1.6

* `PowerShell` support.
* Fix the problem of broken files after uploading.

## 0.1.5

* Add `firebase` publisher.
* Add `github` publisher.

## 0.1.4

* Add `--version` flag.
* Add `qiniu` publisher.
* #21 Add `--jobs` and `--skip-jobs` option to `release` command.
* #22 `zip` maker supports web platform.

## 0.1.3

* #12 Add `--skip-clean` flag to `package` and `release` commands.
* Optimize `exe` maker (Using `Inno Setup`).

## 0.1.2

* `dart-define` arg support multi values.
* Remove `console_bars` and Replace to `ProgressBar`.

## 0.1.0

* First release.
