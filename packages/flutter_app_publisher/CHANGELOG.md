## 0.6.7

 - **FIX**(parse_app_package): fix failure to parse `Property List Binary` format. ([302f715b](https://github.com/fastforgedev/fastforge/commit/302f715be6d0bb677ebab544d884f4bc0e064de1))
 - **FEAT**: Add AppGallery publisher support. ([63d75c36](https://github.com/fastforgedev/fastforge/commit/63d75c36695b86375f5f46c806fc128636e08e9d))
 - **FEAT**: Add support for `minio` publisher and update version to 0.6.3. ([12ff2701](https://github.com/fastforgedev/fastforge/commit/12ff2701f2cb991b8c6cbc397ca0b4f3216868c0))
 - **FEAT**: Support `app-version` argument to override version from pubspec.yaml (future versions will not read from pubspec.yaml). ([f4455e24](https://github.com/fastforgedev/fastforge/commit/f4455e2482fd181c54567b5a2badcb2c28b2e5ff))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))
 - **DOCS**: Add Firebase Hosting and Vercel publishing support. ([ee89718c](https://github.com/fastforgedev/fastforge/commit/ee89718c1c97b632bc4a88c4f6658ecbfa55be28))

## 0.6.6

* feat: add comprehensive pgyer upload parameters support #297

## 0.6.5

* feat: Add AppGallery publisher support

## 0.6.4

* fix: The `savekey-prefix` argument in the minio publisher is now properly ignored when empty

## 0.6.3

* feat: Support `minio` publisher

## 0.6.2

* Publisher now supports `app-version` argument to override version from pubspec.yaml (future versions will not read from pubspec.yaml)

## 0.6.1

* GitHub publisher supports `repo` argument to replace `repo-owner` and `repo-name` arguments
* GitHub publisher supports `release-draft` and `release-prerelease` arguments

## 0.6.0

* Better error if entity is not a file otherwise it looks like this: (#266)

## 0.4.6

* feat: Use GitHub Actions environment variables as fallback when custom variables are not defined (#217)
* fix: Resolve GooglePlay publishing error (status: 400, message: "This edit has already been committed") (#214)

## 0.4.5

* bump `shell_executor` to 0.1.6
* bump `parse_app_package` to 0.4.5

## 0.4.4

* Support set track for playstore deployment (#185)

## 0.4.2

* some fixes

## 0.4.1

* [playstore] - Replace `GOOGLE_APPLICATION_CREDENTIALS` to `PLAYSTORE_CREDENTIALS`

## 0.4.0

* bump `parse_app_package` to 0.4.0

## 0.3.6

* bump `shell_executor` to 0.1.5
* bump `dio` to 5.3.4
* bump `googleapis` to 9.1.0

## 0.3.4

* bump `shell_executor` to 0.1.4

## 0.3.2

* Update dart sdk version to ">=2.16.0 <4.0.0"

## 0.3.1

* Add `firebase-hosting` publisher.
* Add `vercel` publisher.
* Modify the `publish` method to accept `FileSystemEntity` instead of just `File`

## 0.3.0

* Update a dependency to the latest release.

## 0.2.5

* Use `shell_executor` to execute commands
* Merge app publishers into this package
* [publisher-pgyer] Upgrade to v2 Api #91 #92

## 0.2.3

* Downgrade pubspec_parse to 1.1.0

## 0.2.0

* Add `appcenter` publisher. #13

## 0.1.8

* Add `appstore` publisher. #45

## 0.1.6

* Fix the problem of broken files after uploading.

## 0.1.5

* Add `firebase` publisher.
* Add `github` publisher.

## 0.1.4

* Add `qiniu` publisher.

## 0.1.0

* First release.
