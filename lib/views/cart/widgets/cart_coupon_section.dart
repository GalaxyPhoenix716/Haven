import 'package:flutter/material.dart';
import 'package:haven/utils/constants/sizes.dart';
import 'package:haven/views/cart/widgets/haven_textfield.dart';

class CartCouponSection extends StatelessWidget {
  final TextEditingController couponCodeController;
  const CartCouponSection({super.key, required this.couponCodeController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: HavenSizes.padXl),
          child: Text(
            "Apply Coupon",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        const SizedBox(height: HavenSizes.spaceBtwItems / 2),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: HavenSizes.padM),
          child: HavenTextField(
            controller: couponCodeController,
            hintText: "Enter Coupon",
            obscureText: false,
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }
}
