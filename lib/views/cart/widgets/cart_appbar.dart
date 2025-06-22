
import 'package:flutter/material.dart';
import 'package:haven/widgets/appbar.dart';
import 'package:haven/widgets/haven_points_display.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HavenAppbar(
      showBackArrow: true,
      title: "CART",
      actions: [
        HavenPointsDisplay(),
        SizedBox(width: 8),
        CircleAvatar(radius: 15),
        SizedBox(width: 8),
      ],
    );
  }
}