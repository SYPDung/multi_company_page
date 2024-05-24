import 'package:flutter/material.dart';

import 'multi_company_page_platform_interface.dart';

class MultiCompanyPage extends StatelessWidget {
  const MultiCompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company 1 Page'),
      ),
      body: const Center(
        child: Text('Company 1 Page'),
      ),
    );
  }

// Future<String?> getPlatformVersion() {
//   return MultiCompanyPagePlatform.instance.getPlatformVersion();
// }
}
