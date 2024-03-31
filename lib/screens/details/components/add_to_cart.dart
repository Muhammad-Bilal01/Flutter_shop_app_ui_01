import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:shop_app_01/constant.dart";
import "package:shop_app_01/models/product.dart";

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: product.color,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: product.color,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: product.color,
                onPressed: () {},
                child: const Text(
                  "Buy Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
