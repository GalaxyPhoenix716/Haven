import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';
import 'package:haven/utils/constants/sizes.dart';

class HavenHighlightsSection extends StatelessWidget {
  const HavenHighlightsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: EdgeInsets.all(HavenSizes.padM),
      child: Text(
        "Haven Highlights !",
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(color: HavenColors.white),
      ),
    );
  }
}