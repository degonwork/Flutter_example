import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class SocalCart extends StatelessWidget {
  const SocalCart({Key? key, this.icon, this.press}) : super(key: key);

  final String? icon;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
        ),
        width: getProportionateScreenWidth(40),
        height: getProportionateScreenHeight(40),
        decoration: const BoxDecoration(
          color: Color(0XFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon!),
      ),
    );
  }
}
