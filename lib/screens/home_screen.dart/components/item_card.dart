import "package:flutter/material.dart";
import "package:shop_app_01/constant.dart";
import "package:shop_app_01/models/product.dart";

class ItemCard extends StatelessWidget {
  final Product product;
  final Function() press;
  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // height: 180,
              // width: 160,
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child:
                  Hero(tag: "${product.id}", child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child:
                Text(product.title, style: const TextStyle(color: kTextColor)),
          ),
          Text("\$ ${product.price}",
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
