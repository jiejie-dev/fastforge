import 'package:fastforge/src/version.dart';
import 'package:unified_distributor/unified_distributor.dart';

Future<void> main(List<String> args) async {
  final cli = UnifiedDistributorCommandLineInterface(
    'fastforge',
    'Package and publish your apps with ease.',
    packageVersion,
    packageName: 'fastforge',
    displayName: 'Fastforge',
  );
  return await cli.run(args);
}
