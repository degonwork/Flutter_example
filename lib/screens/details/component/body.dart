import 'package:flutter/material.dart';
import 'package:shop_app/conponent/default_button.dart';

import 'package:shop_app/model/product.dart';
import 'package:shop_app/screens/details/component/color_dots.dart';
import 'package:shop_app/screens/details/component/product_decription.dart';
import 'package:shop_app/screens/details/component/product_image.dart';
import 'package:shop_app/screens/details/component/top_round_container.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(
            product: product,
          ),
          TopRoundedContainer(
            color: Colors.white,
            child: ProductDecription(
              product: product,
              pressOnSeeMore: () {},
            ),
          ),
          TopRoundedContainer(
            color: const Color(0XFFF6F7F9),
            child: Column(
              children: [
                ColorDots(product: product),
                TopRoundedContainer(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.15,
                      right: SizeConfig.screenWidth * 0.15,
                      top: getProportionateScreenWidth(15),
                      bottom: getProportionateScreenWidth(40),
                    ),
                    child: DefaultButton(
                      text: 'Add to Cart',
                      press: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
