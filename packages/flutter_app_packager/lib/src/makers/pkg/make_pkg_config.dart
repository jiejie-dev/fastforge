import 'dart:io';

import 'package:flutter_app_packager/src/api/app_package_maker.dart';

class MakePkgConfig extends MakeConfig {
  MakePkgConfig({
    this.installPath,
    this.signPkgIdentity,
    this.signAppIdentity,
  });

  factory MakePkgConfig.fromJson(Map<String, dynamic> json) {
    return MakePkgConfig(
      installPath: json['install_path'],
      signPkgIdentity: json['sign_pkg_identity'],
      signAppIdentity: json['sign_app_identity'],
    );
  }
  final String? installPath;
  final String? signPkgIdentity;
  final String? signAppIdentity;

  @override
  Map<String, dynamic> toJson() {
    return {
      'install_path': installPath,
      'sign_pkg_identity': signPkgIdentity,
      'sign_app_identity': signAppIdentity,
    }..removeWhere((key, value) => value == null);
  }
}

class MakePkgConfigLoader extends DefaultMakeConfigLoader {
  @override
  MakeConfig load(
    Map<String, dynamic>? arguments,
    Directory outputDirectory, {
    required Directory buildOutputDirectory,
    required List<File> buildOutputFiles,
  }) {
    final baseMakeConfig = super.load(
      arguments,
      outputDirectory,
      buildOutputDirectory: buildOutputDirectory,
      buildOutputFiles: buildOutputFiles,
    );
    final map = loadMakeConfigYaml(
      '$platform/packaging/$packageFormat/make_config.yaml',
    );
    return MakePkgConfig.fromJson(map).copyWith(baseMakeConfig);
  }
}
