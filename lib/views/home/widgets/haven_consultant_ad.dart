import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';
import 'package:haven/utils/constants/sizes.dart';

class HavenConsultantAd extends StatelessWidget {
  const HavenConsultantAd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(HavenSizes.padM),
      width: double.infinity,
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dreaming of a heavenly home?\nYour personal haven consultant is just one tap away.",
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: HavenColors.white),
          ),
    
          const SizedBox(height: HavenSizes.spaceBtwItems),
    
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              foregroundColor: Theme.of(context).colorScheme.primary,
              side: BorderSide(width: 1.5, color: Color(0xFF719A80)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: HavenSizes.padXs),
              alignment: Alignment.center,
            ),
            child: Text(
              "Start Your Design Journey",
              style: TextStyle(
                fontSize: HavenSizes.buttonFont,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 15.0,
                    color: HavenColors.primaryAccentGlow,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
