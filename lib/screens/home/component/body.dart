import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/component/categories.dart';
import 'package:shop_app/screens/home/component/discount_banner.dart';
import 'package:shop_app/screens/home/component/home_header.dart';
import 'package:shop_app/screens/home/component/popular_product.dart';
import 'package:shop_app/screens/home/component/special_offers.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const HomeHeader(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const DiscountBanner(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const Categories(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const SpecialOffer(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const PopularProduct(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
          ],
        ),
      ),
    );
  }
}
