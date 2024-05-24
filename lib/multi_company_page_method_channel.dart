import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'multi_company_page_platform_interface.dart';

/// An implementation of [MultiCompanyPagePlatform] that uses method channels.
class MethodChannelMultiCompanyPage extends MultiCompanyPagePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('multi_company_page');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
