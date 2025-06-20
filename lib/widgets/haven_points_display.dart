import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';

class HavenPointsDisplay extends StatelessWidget {
  const HavenPointsDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 1, color: HavenColors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.14),
            spreadRadius: 0,
            blurRadius: 2.5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(100),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            child: Icon(
              Icons.energy_savings_leaf_rounded,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 15,
            ),
          ),

          SizedBox(width: 4),

          Text(
            '1800',
            style: Theme.of(
              context,
            ).textTheme.labelSmall?.copyWith(color: HavenColors.black),
          ),
          SizedBox(width: 6),
        ],
      ),
    );
  }
}
