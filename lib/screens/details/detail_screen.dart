import 'package:flutter/material.dart';
import 'package:shop_app/model/product.dart';
import 'package:shop_app/screens/details/component/body.dart';

import 'package:shop_app/screens/details/component/custom_appbar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static String routeName = '/detail';
  @override
  Widget build(BuildContext context) {
    final ProductDetailAgrument args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailAgrument;
    return Scaffold(
      backgroundColor: const Color(0XFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: args.product.rating),
      ),
      body: Body(
        product: args.product,
      ),
    );
  }
}

class ProductDetailAgrument {
  final Product product;

  ProductDetailAgrument({required this.product});
}
