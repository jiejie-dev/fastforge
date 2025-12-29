# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2025-12-29

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`fastforge` - `v0.6.8`](#fastforge---v068)
 - [`flutter_app_builder` - `v0.6.1`](#flutter_app_builder---v061)
 - [`flutter_app_packager` - `v0.6.6`](#flutter_app_packager---v066)
 - [`flutter_app_publisher` - `v0.6.7`](#flutter_app_publisher---v067)
 - [`flutter_distributor` - `v0.6.7`](#flutter_distributor---v067)
 - [`hello_world` - `v1.1.0`](#hello_world---v110)
 - [`multiple_flavors` - `v1.0.1`](#multiple_flavors---v101)
 - [`parse_app_package` - `v0.6.0+1`](#parse_app_package---v0601)
 - [`shell_executor` - `v0.3.1`](#shell_executor---v031)
 - [`shell_uikit` - `v0.3.1`](#shell_uikit---v031)
 - [`unified_distributor` - `v0.2.7`](#unified_distributor---v027)

---

#### `fastforge` - `v0.6.8`

 - **REFACTOR**: Migrate fastforge and flutter_distributor to unified_distributor. ([08cc8a0c](https://github.com/fastforgedev/fastforge/commit/08cc8a0c9f14c7137578d1f3c78b4ecf72026fbd))
 - **FEAT**: Add welcome message to Fastforge CLI. ([c5a11c61](https://github.com/fastforgedev/fastforge/commit/c5a11c61ecc59b2d9b82e347c689ecd52d166ed2))
 - **FEAT**: Add support for `minio` publisher and update version to 0.6.3. ([12ff2701](https://github.com/fastforgedev/fastforge/commit/12ff2701f2cb991b8c6cbc397ca0b4f3216868c0))
 - **FEAT**: Support `app-version` argument to override version from pubspec.yaml (future versions will not read from pubspec.yaml). ([f4455e24](https://github.com/fastforgedev/fastforge/commit/f4455e2482fd181c54567b5a2badcb2c28b2e5ff))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))

#### `flutter_app_builder` - `v0.6.1`

 - **FIX**: Fixed android builder not supporting flavor as upper case. [#134](https://github.com/fastforgedev/fastforge/issues/134) ([#197](https://github.com/fastforgedev/fastforge/issues/197)). ([fca13756](https://github.com/fastforgedev/fastforge/commit/fca13756aacbe95c46be9f71168325084817836f))
 - **FIX**: Unhandled exception Null check operator used on a null value ([#159](https://github.com/fastforgedev/fastforge/issues/159)). ([bacaf33a](https://github.com/fastforgedev/fastforge/commit/bacaf33a41e7f6d2aa31888e75c32220f6de0736))
 - **FIX**: invalid windows build directory above 3.16.0 or 3.15.0-pre ([#149](https://github.com/fastforgedev/fastforge/issues/149)). ([0403ec7f](https://github.com/fastforgedev/fastforge/commit/0403ec7f2bebac6e4190c6a420c3fb5f7f23e282))
 - **FEAT**: Add additional debug prints for argument handling in AppBuilder. ([343b1538](https://github.com/fastforgedev/fastforge/commit/343b15382611b204f9995e203c86df28edfd9d3d))
 - **FEAT**: Add debug prints for argument merging in AppBuilder. ([145224f4](https://github.com/fastforgedev/fastforge/commit/145224f4f3fbb996e582a01d99d1dfa5f3e1249a))
 - **FEAT**: Enhance argument merging (override dart-define) in AppBuilder for build configuration. ([7f285014](https://github.com/fastforgedev/fastforge/commit/7f285014182fc437b5c69882a3ce0d90ad4c8b40))
 - **FEAT**: add ohos support to flutter_app_builder. ([1337fbb8](https://github.com/fastforgedev/fastforge/commit/1337fbb875d3895a00d4b39321f2aa85f0065358))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))

#### `flutter_app_packager` - `v0.6.6`

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

#### `flutter_app_publisher` - `v0.6.7`

 - **FIX**(parse_app_package): fix failure to parse `Property List Binary` format. ([302f715b](https://github.com/fastforgedev/fastforge/commit/302f715be6d0bb677ebab544d884f4bc0e064de1))
 - **FEAT**: Add AppGallery publisher support. ([63d75c36](https://github.com/fastforgedev/fastforge/commit/63d75c36695b86375f5f46c806fc128636e08e9d))
 - **FEAT**: Add support for `minio` publisher and update version to 0.6.3. ([12ff2701](https://github.com/fastforgedev/fastforge/commit/12ff2701f2cb991b8c6cbc397ca0b4f3216868c0))
 - **FEAT**: Support `app-version` argument to override version from pubspec.yaml (future versions will not read from pubspec.yaml). ([f4455e24](https://github.com/fastforgedev/fastforge/commit/f4455e2482fd181c54567b5a2badcb2c28b2e5ff))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))
 - **DOCS**: Add Firebase Hosting and Vercel publishing support. ([ee89718c](https://github.com/fastforgedev/fastforge/commit/ee89718c1c97b632bc4a88c4f6658ecbfa55be28))

#### `flutter_distributor` - `v0.6.7`

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

#### `hello_world` - `v1.1.0`

 - **FIX**(parse_app_package): fix failure to parse `Property List Binary` format. ([302f715b](https://github.com/fastforgedev/fastforge/commit/302f715be6d0bb677ebab544d884f4bc0e064de1))
 - **FIX**: exe config issue. ([a3ba826e](https://github.com/fastforgedev/fastforge/commit/a3ba826ec2ce896f9c005d3826ba53a1d25bf0da))
 - **FEAT**: add pkg maker. ([c09182aa](https://github.com/fastforgedev/fastforge/commit/c09182aabd68f8a84510533db930696fa441e3b6))
 - **FEAT**: Linux RPM packaging support  ([#101](https://github.com/fastforgedev/fastforge/issues/101)). ([d69eea1f](https://github.com/fastforgedev/fastforge/commit/d69eea1fb6a6c912fb61e7af05a6ea66c86812db))

#### `multiple_flavors` - `v1.0.1`

 - **FIX**: Fixed android builder not supporting flavor as upper case. [#134](https://github.com/fastforgedev/fastforge/issues/134) ([#197](https://github.com/fastforgedev/fastforge/issues/197)). ([fca13756](https://github.com/fastforgedev/fastforge/commit/fca13756aacbe95c46be9f71168325084817836f))

#### `parse_app_package` - `v0.6.0+1`

 - **FIX**(parse_app_package): fix failure to parse `Property List Binary` format. ([302f715b](https://github.com/fastforgedev/fastforge/commit/302f715be6d0bb677ebab544d884f4bc0e064de1))

#### `shell_executor` - `v0.3.1`

 - **FEAT**: Linux RPM packaging support  ([#101](https://github.com/fastforgedev/fastforge/issues/101)). ([d69eea1f](https://github.com/fastforgedev/fastforge/commit/d69eea1fb6a6c912fb61e7af05a6ea66c86812db))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))

#### `shell_uikit` - `v0.3.1`

 - **FEAT**(shell_uikit): Add Spinner component & examples. ([33f30c43](https://github.com/fastforgedev/fastforge/commit/33f30c4342fbed9602fa4ab66742370f6d2a2ac1))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))

#### `unified_distributor` - `v0.2.7`

 - **REFACTOR**: Migrate fastforge and flutter_distributor to unified_distributor. ([08cc8a0c](https://github.com/fastforgedev/fastforge/commit/08cc8a0c9f14c7137578d1f3c78b4ecf72026fbd))
 - **FEAT**: Add support for AppGallery by including app ID option in publish command. ([06d0cb04](https://github.com/fastforgedev/fastforge/commit/06d0cb0465dbb2f878adc5d88c51cd97704b4651))
 - **FEAT**: Add support for `minio` publisher and update version to 0.6.3. ([12ff2701](https://github.com/fastforgedev/fastforge/commit/12ff2701f2cb991b8c6cbc397ca0b4f3216868c0))
 - **FEAT**: Support `app-version` argument to override version from pubspec.yaml (future versions will not read from pubspec.yaml). ([f4455e24](https://github.com/fastforgedev/fastforge/commit/f4455e2482fd181c54567b5a2badcb2c28b2e5ff))
 - **FEAT**: add OHOS support to package command. ([c757c855](https://github.com/fastforgedev/fastforge/commit/c757c8555aa195a84b7f199245c9fd9ae7bb5fee))
 - **DOCS**: Update README files to standardize references to fastforge and remove outdated links. ([f2517c7d](https://github.com/fastforgedev/fastforge/commit/f2517c7df51fbf8b0d6246aac27e6ff41a8a3eb7))

