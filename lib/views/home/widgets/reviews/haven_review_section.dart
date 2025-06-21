import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';
import 'package:haven/utils/constants/sizes.dart';
import 'package:haven/views/home/widgets/reviews/review_card.dart';

class HavenReviewsSection extends StatelessWidget {
  final List<Map<String, String>> reviews;

  const HavenReviewsSection({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          color: Theme.of(context).colorScheme.onPrimary,
          padding: EdgeInsets.all(HavenSizes.padM),
          child: Text(
            "See What Haven \nCommunity Has \nTo Say ;)",
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: HavenColors.black),
          ),
        ),
        SizedBox(height: HavenSizes.defaultSpace),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              final review = reviews[index];
              return Row(
                children: [
                  const SizedBox(width: HavenSizes.padL,),
                  ReviewCard(
                    review: review['review']!,
                    name: review['name']!,
                    rotationDegree: index.isEven ? -0.05 : 0.05, // approx ±2.8°
                  ),
                  const SizedBox(width: HavenSizes.padL,),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
