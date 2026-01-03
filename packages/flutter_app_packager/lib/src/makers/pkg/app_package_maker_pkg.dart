import 'dart:io';

import 'package:flutter_app_packager/src/api/app_package_maker.dart';
import 'package:flutter_app_packager/src/makers/pkg/make_pkg_config.dart';
import 'package:shell_executor/shell_executor.dart';

class AppPackageMakerPkg extends AppPackageMaker {
  @override
  String get name => 'pkg';
  @override
  String get platform => 'macos';
  @override
  String get packageFormat => 'pkg';

  @override
  MakeConfigLoader get configLoader {
    return MakePkgConfigLoader()
      ..platform = platform
      ..packageFormat = packageFormat;
  }

  @override
  Future<MakeResult> make(MakeConfig config) async {
    MakePkgConfig makeConfig = config as MakePkgConfig;
    print('makeConfig: ${makeConfig.toJson()}');
    File appFile = config.buildOutputFiles.first;

    // Sign the .app file before creating PKG if signAppIdentity is provided
    if (makeConfig.signAppIdentity != null) {
      // Determine entitlements file path based on build mode
      String entitlementsPath;
      if (config.buildMode == 'release') {
        entitlementsPath = 'macos/Runner/Release.entitlements';
      } else {
        entitlementsPath = 'macos/Runner/DebugProfile.entitlements';
      }

      // Check if entitlements file exists
      File entitlementsFile = File(entitlementsPath);
      List<String> codesignArgs = [
        '--force',
        '--deep',
        '--sign',
        makeConfig.signAppIdentity!,
        '--options',
        'runtime',
      ];

      // Add entitlements if file exists
      if (entitlementsFile.existsSync()) {
        codesignArgs.addAll(['--entitlements', entitlementsPath]);
      }

      codesignArgs.add(appFile.path);

      await $('codesign', codesignArgs);
    }

    File outputFile = config.outputFile;
    File unsignedPkgFile = File(
      outputFile.path.replaceFirst(
        '.$packageFormat',
        '-unsigned.$packageFormat',
      ),
    );

    await $('xcrun', [
      'productbuild',
      '--component',
      appFile.path,
      makeConfig.installPath ?? '/Applications/',
      unsignedPkgFile.path,
    ]);
    if (makeConfig.signPkgIdentity != null) {
      await $('xcrun', [
        'productsign',
        '--sign',
        makeConfig.signPkgIdentity!,
        unsignedPkgFile.path,
        outputFile.path,
      ]);
      unsignedPkgFile.deleteSync();
    } else {
      unsignedPkgFile.renameSync(outputFile.path);
    }
    return Future.value(resultResolver.resolve(config));
  }
}
