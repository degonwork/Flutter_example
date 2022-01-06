import 'package:flutter/material.dart';
import 'package:shop_app/constrans.dart';
import 'package:shop_app/screens/complete_profile/component/complete_form_profile.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.screenHeight * 0.01,
            ),
            Text('Complete Profile', style: headingStyle),
            const Text(
              'Complete your details or continue \nwith social media',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            const CompleteProfileForm(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const Text(
              'By continuing your confirm that you agree \nwith our Team and Condition',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
