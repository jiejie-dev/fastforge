library fastforge;

import 'package:fastforge/src/version.dart';
import 'package:unified_distributor/unified_distributor.dart';

/// The main class for the Fastforge package.
///
/// This class extends the [UnifiedDistributor] class and provides a
/// default implementation for the [UnifiedDistributor] class.
class Fastforge extends UnifiedDistributor {
  /// Creates a new instance of the Fastforge class.
  Fastforge() : super('fastforge', 'Fastforge', packageVersion);
}
