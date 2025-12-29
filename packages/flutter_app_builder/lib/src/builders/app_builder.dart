import 'dart:io';

import 'package:flutter_app_builder/src/build_config.dart';
import 'package:flutter_app_builder/src/build_error.dart';
import 'package:flutter_app_builder/src/build_result.dart';
import 'package:flutter_app_builder/src/commands/flutter.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

abstract class AppBuilder {
  String get platform => throw UnimplementedError();
  bool get isSupportedOnCurrentPlatform => throw UnimplementedError();
  BuildResultResolver get resultResolver;
  String get buildSubcommand => platform;

  String get appName => pubspec.name;
  Version get appVersion => pubspec.version!;
  String get appBuildName => appVersion.toString().split('+').first;
  String get appBuildNumber => appVersion.toString().split('+').last;

  Pubspec? _pubspec;

  Pubspec get pubspec {
    if (_pubspec == null) {
      final yamlString = File('pubspec.yaml').readAsStringSync();
      _pubspec = Pubspec.parse(yamlString);
    }
    return _pubspec!;
  }

  bool match(String platform, [String? target]) {
    return this.platform == platform;
  }

  /// 递归合并两个 map，如果两个 map 都有相同的 key 且值都是 Map，则递归合并 Map；
  /// 否则使用第二个 map 的值覆盖第一个 map 的值。
  Map<String, dynamic> _mergeArguments(
    Map<String, dynamic> base,
    Map<String, dynamic> override,
  ) {
    final merged = Map<String, dynamic>.from(base);

    override.forEach((key, value) {
      final baseValue = merged[key];
      if (baseValue is Map && value is Map) {
        // 递归合并嵌套的 Map
        merged[key] = _mergeArguments(
          Map<String, dynamic>.from(baseValue),
          Map<String, dynamic>.from(value),
        );
      } else {
        merged[key] = value;
      }
    });

    return merged;
  }

  Future<BuildResult> build({
    required Map<String, dynamic> arguments,
    Map<String, String>? environment,
  }) async {
    final time = Stopwatch()..start();

    final builtinArguments = <String, dynamic>{
      'dart-define': {
        'FLUTTER_BUILD_NAME': appBuildName,
        'FLUTTER_BUILD_NUMBER': appBuildNumber,
      },
    };

    final mergedArguments = _mergeArguments(builtinArguments, arguments);

    BuildConfig config = BuildConfig(arguments: mergedArguments);
    List<String> buildArguments = [];

    for (String key in config.arguments.keys) {
      dynamic value = config.arguments[key];
      if (value == null || value is bool) {
        buildArguments.add('--$key');
      } else if (value is Map) {
        for (String subKey in value.keys) {
          buildArguments.addAll(['--$key', '$subKey=${value[subKey]}']);
        }
      } else {
        buildArguments.addAll(['--$key', value]);
      }
    }

    ProcessResult processResult = await flutter.withEnv(environment).build(
      [buildSubcommand, ...buildArguments],
    );

    if (processResult.exitCode != 0) {
      throw BuildError('${processResult.stderr}');
    }

    return resultResolver.resolve(config)..duration = time.elapsed;
  }
}
