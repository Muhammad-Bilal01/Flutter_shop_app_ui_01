import 'package:flutter/material.dart';
import 'package:shop_app_01/constant.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfCount = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(Icons.remove, () {
          if (numOfCount > 1) {
            setState(() {
              numOfCount--;
            });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfCount.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        buildOutlinedButton(Icons.add, () {
          setState(() {
            numOfCount++;
          });
        }),
      ],
    );
  }

  SizedBox buildOutlinedButton(IconData icon, Function() press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
