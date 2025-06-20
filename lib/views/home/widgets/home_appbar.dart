
import 'package:flutter/material.dart';
import 'package:haven/widgets/appbar.dart';
import 'package:haven/widgets/cart_counter_icon.dart';
import 'package:haven/widgets/haven_points_display.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HavenAppbar(
      showBackArrow: false,
      actions: [
        Icon(Iconsax.search_normal,),
        SizedBox(width: 8),
        CartCounterIcon(),
        SizedBox(width: 8),
        HavenPointsDisplay(),
        SizedBox(width: 8),
        CircleAvatar(radius: 15),
        SizedBox(width: 8),
      ],
    );
  }
}