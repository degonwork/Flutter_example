import 'package:flutter/material.dart';
import 'package:shop_app/conponent/product_cart.dart';
import 'package:shop_app/model/product.dart';
import 'package:shop_app/screens/details/detail_screen.dart';
import 'package:shop_app/screens/home/component/section_title.dart';

import '../../../size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SectionTitle(
          text: 'Popular product',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...List.generate(
              demoProducts.length,
              (index) => ProductCart(
                product: demoProducts[index],
                press: () => Navigator.pushNamed(
                    context, DetailScreen.routeName,
                    arguments:
                        ProductDetailAgrument(product: demoProducts[index])),
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(20),
            ),
          ]),
        )
      ],
    );
  }
}
