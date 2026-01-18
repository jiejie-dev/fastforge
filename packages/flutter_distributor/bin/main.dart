import 'package:flutter_distributor/src/version.dart';
import 'package:unified_distributor/unified_distributor.dart';

Future<void> main(List<String> args) async {
  final cli = UnifiedDistributorCommandLineInterface(
    'flutter_distributor',
    'Package and publish your apps with ease.',
    packageVersion,
    packageName: 'flutter_distributor',
    displayName: 'Flutter Distributor',
  );
  return await cli.run(args);
}
