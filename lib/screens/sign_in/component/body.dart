import 'package:flutter/material.dart';
import 'package:shop_app/conponent/no_account.dart';

import 'package:shop_app/conponent/socal_cart.dart';

import 'package:shop_app/screens/sign_in/component/sign_forn.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Sign in with your email end password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                const SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCart(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocalCart(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocalCart(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                const NoAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
