import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/component/profile_menu.dart';
import 'package:shop_app/screens/profile/component/profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(
            height: 20,
          ),
          ProfileMenu(
            icon: 'assets/icons/User Icon.svg',
            text: 'My Account',
            press: () {},
          ),
          ProfileMenu(
            icon: 'assets/icons/Bell.svg',
            text: 'Nofication',
            press: () {},
          ),
          ProfileMenu(
            icon: 'assets/icons/Settings.svg',
            text: 'Settings',
            press: () {},
          ),
          ProfileMenu(
            icon: 'assets/icons/Question mark.svg',
            text: 'Help center',
            press: () {},
          ),
          ProfileMenu(
            icon: 'assets/icons/Log out.svg',
            text: 'Log out',
            press: () {},
          ),
        ],
      ),
    );
  }
}
