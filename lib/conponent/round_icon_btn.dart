import 'package:flutter/material.dart';
import 'package:shop_app/constrans.dart';

import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({Key? key, required this.iconData, required this.press})
      : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenHeight(40),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          primary: kPrimaryColor,
          backgroundColor: Colors.white,
          padding: EdgeInsets.zero,
        ),
        onPressed: press,
        child: Icon(
          iconData,
          color: Colors.black,
        ),
      ),
    );
  }
}
