import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app_01/constant.dart';
import 'package:shop_app_01/models/product.dart';
import 'package:shop_app_01/screens/details/details_screen.dart';
import 'package:shop_app_01/screens/home_screen.dart/components/categories.dart';
import 'package:shop_app_01/screens/home_screen.dart/components/item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ItemCard(
                    product: products[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailScreen(product: products[index]),
                          ));
                    });
              },
            ),
          ),
        ),
      ],
    );
  }
}
