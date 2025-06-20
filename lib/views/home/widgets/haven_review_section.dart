import 'package:flutter/material.dart';
import 'package:haven/utils/constants/sizes.dart';

class HavenReviewsSection extends StatelessWidget {
  const HavenReviewsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      padding: EdgeInsets.all(HavenSizes.padM),
      child: Text(
        "See What Haven \nCommunity Has \nTo Say ;)",
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}