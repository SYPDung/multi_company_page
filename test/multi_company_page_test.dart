import 'package:flutter_test/flutter_test.dart';
import 'package:multi_company_page/multi_company_page.dart';
import 'package:multi_company_page/multi_company_page_platform_interface.dart';
import 'package:multi_company_page/multi_company_page_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMultiCompanyPagePlatform
    with MockPlatformInterfaceMixin
    implements MultiCompanyPagePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MultiCompanyPagePlatform initialPlatform = MultiCompanyPagePlatform.instance;

  test('$MethodChannelMultiCompanyPage is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMultiCompanyPage>());
  });

  test('getPlatformVersion', () async {
    MultiCompanyPage multiCompanyPagePlugin = MultiCompanyPage();
    MockMultiCompanyPagePlatform fakePlatform = MockMultiCompanyPagePlatform();
    MultiCompanyPagePlatform.instance = fakePlatform;

    // expect(await multiCompanyPagePlugin.getPlatformVersion(), '42');
  });
}
