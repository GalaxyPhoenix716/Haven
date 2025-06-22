import 'package:flutter/material.dart';
import 'package:haven/utils/constants/routes.dart';
import 'package:haven/utils/helpers/helpers.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () => HavenHelpers.pushTo(HavenRoutes.cartRoute), icon: Icon(Iconsax.shopping_cart)),
        Positioned(
          right: 7,
          top: 7,
          child: Container(
            width: 15,
            height: 15,
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
