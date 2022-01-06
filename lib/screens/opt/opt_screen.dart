import 'package:flutter/material.dart';
import 'package:shop_app/screens/opt/component/body.dart';

class OPTScreen extends StatelessWidget {
  const OPTScreen({Key? key}) : super(key: key);
  static String routeName = '/opt';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OPT Verification'),
      ),
      body: const Body(),
    );
  }
}
