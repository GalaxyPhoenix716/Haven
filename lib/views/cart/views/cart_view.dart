import 'package:flutter/material.dart';
import 'package:haven/utils/constants/sizes.dart';
import 'package:haven/views/cart/widgets/cart_appbar.dart';
import 'package:haven/views/cart/widgets/cart_coupon_section.dart';
import 'package:haven/views/cart/widgets/cart_footer_buttons.dart';
import 'package:haven/views/cart/widgets/cart_price_desc.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  late final TextEditingController _couponCodeController;

  @override
  void initState() {
    _couponCodeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _couponCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CartAppbar(),

            const SizedBox(height: HavenSizes.defaultSpace/2),

            //Cart Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: HavenSizes.padL),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Qty",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(width: 60),
                      Text(
                        "Amount",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.grey,
                  );
                },
              ),
            ),

            //Coupon Field
            CartCouponSection(couponCodeController: _couponCodeController),

            const SizedBox(height: HavenSizes.defaultSpace),

            //Price Breakdown
            CartPriceDescription(amount: 164200, havenPoints: 5220),

            const SizedBox(height: HavenSizes.defaultSpace),
            
            //Address select and Payment Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: HavenSizes.padM),
              child: CartFooterButtons(),
            ),
          ],
        ),
      ),
    );
  }
}
