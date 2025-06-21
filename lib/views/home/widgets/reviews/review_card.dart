import 'package:flutter/material.dart';
import 'package:haven/utils/device/device_fn.dart';
import 'package:haven/utils/constants/colors.dart';

class ReviewCard extends StatelessWidget {
  final String review;
  final String name;
  final String? imageUrl;
  final double? rotationDegree;

  const ReviewCard({
    super.key,
    required this.review,
    required this.name,
    this.imageUrl,
    this.rotationDegree,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotationDegree!,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 235, minWidth: 230, maxHeight: 240,maxWidth: 230
        ),
        child: Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border.all(
              width: 3,
              color: Theme.of(context).colorScheme.primary,
            ),
            borderRadius: BorderRadius.circular(35),
          ),
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: HavenDeviceHelpers.isDarkMode(context)
                  ? HavenColors.cardNight
                  : HavenColors.cardDay,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '“$review.”',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '~ $name.',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2,color: Theme.of(context).colorScheme.primary)
                      ),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: HavenColors.whiteAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
