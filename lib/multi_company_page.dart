import 'package:flutter/material.dart';

class MultiCompanyPage extends StatelessWidget {
  const MultiCompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company 3 Page'),
      ),
      body: Column(
        children: [
          const Text('Company 3 Page'),
          const Text('Company 3 Page'),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Button"),
          )
        ],
      ),
    );
  }

// Future<String?> getPlatformVersion() {
//   return MultiCompanyPagePlatform.instance.getPlatformVersion();
// }
}
