import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'multi_company_page_method_channel.dart';

abstract class MultiCompanyPagePlatform extends PlatformInterface {
  /// Constructs a MultiCompanyPagePlatform.
  MultiCompanyPagePlatform() : super(token: _token);

  static final Object _token = Object();

  static MultiCompanyPagePlatform _instance = MethodChannelMultiCompanyPage();

  /// The default instance of [MultiCompanyPagePlatform] to use.
  ///
  /// Defaults to [MethodChannelMultiCompanyPage].
  static MultiCompanyPagePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MultiCompanyPagePlatform] when
  /// they register themselves.
  static set instance(MultiCompanyPagePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
