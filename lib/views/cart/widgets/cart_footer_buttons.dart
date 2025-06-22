import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';
import 'package:haven/utils/constants/sizes.dart';
import 'package:haven/utils/device/device_fn.dart';
import 'package:iconsax/iconsax.dart';

class CartFooterButtons extends StatelessWidget {
  const CartFooterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: HavenDeviceHelpers.getDeviceWidth() * 1.1 / 3,
          height: 58,
          decoration: BoxDecoration(
            color: HavenDeviceHelpers.isDarkMode(context)
                ? HavenColors.cardNight
                : HavenColors.cardDay,
            border: Border.all(
              width: 2,
              color: HavenDeviceHelpers.isDarkMode(context)
                  ? HavenColors.darkGrey
                  : HavenColors.lightGrey,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(HavenSizes.padVs),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  "1xxx - Rose, Ocean Park, Nipania, Indore, M.P.",
                  maxLines: 2,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    overflow: TextOverflow.ellipsis,
                    color: HavenDeviceHelpers.isDarkMode(context)
                        ? HavenColors.darkGrey
                        : HavenColors.lightGrey,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Icon(
                    Iconsax.arrow_right_3,
                    color: HavenDeviceHelpers.isDarkMode(context)
                        ? HavenColors.darkGrey
                        : HavenColors.lightGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: HavenDeviceHelpers.getDeviceWidth() * 1.5 / 3,
          height: 58,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            border: Border.all(width: 2, color: Color(0xFFCA5F39)),
            borderRadius: BorderRadius.circular(35),
          ),
          child: Center(
            child: Text(
              "PAY",
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: HavenColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
