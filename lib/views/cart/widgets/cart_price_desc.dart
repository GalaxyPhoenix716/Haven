import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';
import 'package:haven/utils/constants/sizes.dart';
import 'package:haven/utils/device/device_fn.dart';
import 'package:haven/utils/helpers/helpers.dart';

class CartPriceDescription extends StatelessWidget {
  final double amount;
  final int? havenPoints;
  const CartPriceDescription({
    super.key,
    required this.amount,
    this.havenPoints,
  });

  @override
  Widget build(BuildContext context) {
    final double gst = amount * 0.18;
    final double packagingCharges = amount * 0.01;
    final double handlingCharges = amount * 0.0015;
    final double deliveryCharges = amount * 0.01;
    final double internalCharges =
        packagingCharges + handlingCharges + deliveryCharges;
    late final double havenPointsDiscount;
    if (havenPoints == null) {
      havenPointsDiscount = 0;
    } else {
      havenPointsDiscount = havenPoints! * 0.35;
    }
    final double totalAmount =
        amount + gst + internalCharges - havenPointsDiscount;

    return Container(
      width: double.infinity,
      color: HavenDeviceHelpers.isDarkMode(context)
          ? HavenColors.cardNight
          : HavenColors.cardDay,
      padding: EdgeInsets.symmetric(
        horizontal: HavenSizes.padM,
        vertical: HavenSizes.padXs,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Amount:", style: Theme.of(context).textTheme.labelMedium),
              Text(
                "₹${HavenHelpers.formatAmount(amount)}",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),

          const SizedBox(height: 5),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("GST:", style: Theme.of(context).textTheme.labelMedium),
              Text(
                "₹${HavenHelpers.formatAmount(gst)}",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),

          const SizedBox(height: 5),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Internal: ",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                "₹${HavenHelpers.formatAmount(internalCharges)}",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),

          const SizedBox(height: 5),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Haven Points Used:",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                havenPoints == null
                    ? "0"
                    : "$havenPoints >> -₹${HavenHelpers.formatAmount(havenPointsDiscount)}",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),

          const SizedBox(height: 5),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total:", style: Theme.of(context).textTheme.labelMedium),
              Text(
                "₹${HavenHelpers.formatAmount(totalAmount)}",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
