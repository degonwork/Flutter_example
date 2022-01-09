import 'package:flutter/material.dart';
import 'package:shop_app/conponent/custom_button_nav_bar.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/home/component/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
