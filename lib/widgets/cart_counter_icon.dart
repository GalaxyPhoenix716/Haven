import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(Iconsax.shopping_cart),
        Positioned(
          right: 0,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ],
    );
  }
}
