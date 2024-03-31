import 'package:flutter/material.dart';
import 'package:shop_app_01/constant.dart';
import 'package:shop_app_01/models/product.dart';
import 'package:shop_app_01/screens/details/components/add_to_cart.dart';
import 'package:shop_app_01/screens/details/components/color_and_size.dart';
import 'package:shop_app_01/screens/details/components/counter_with_fav_btn.dart';
import 'package:shop_app_01/screens/details/components/description.dart';
import 'package:shop_app_01/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // it give total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  // height: 550,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.14,
                        left: kDefaultPadding,
                        right: kDefaultPadding),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        const SizedBox(height: kDefaultPadding / 2),
                        Description(product: product),
                        const SizedBox(height: kDefaultPadding / 2),
                        const CounterWithFavBtn(),
                        const SizedBox(height: kDefaultPadding / 2),
                        AddToCart(product: product),
                      ],
                    ),
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
