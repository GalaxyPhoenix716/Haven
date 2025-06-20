import 'package:flutter/material.dart';
import 'package:haven/utils/constants/image_urls.dart';
import 'package:haven/utils/constants/sizes.dart';
import 'package:haven/views/home/widgets/haven_consultant_ad.dart';
import 'package:haven/views/home/widgets/haven_review_section.dart';
import 'package:haven/views/home/widgets/home_appbar.dart';
import 'package:haven/views/home/widgets/ighlights.dart';
import 'package:haven/views/home/widgets/image_carousel.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List promoImages = [
    Image.asset(HavenImages.havenImageMain, fit: BoxFit.cover),
    Image.asset(HavenImages.havenImage2, fit: BoxFit.cover),
    Image.asset(HavenImages.havenImage3, fit: BoxFit.cover),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              //Image Carousel
              ImageCarousel(pics: promoImages),
              //AppBar
              HomeAppBar(),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: HavenSizes.padM,
              vertical: HavenSizes.padS,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Browse Categories",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "See More →",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),

                const SizedBox(height: HavenSizes.defaultSpace),
              ],
            ),
          ),

          HavenConsultantAd(),

          const SizedBox(height: HavenSizes.defaultSpace),

          HavenHighlightsSection(),

          const SizedBox(height: HavenSizes.defaultSpace),

          HavenReviewsSection(),

          const SizedBox(height: HavenSizes.defaultSpace),
          const SizedBox(height: HavenSizes.defaultSpace),
          HavenFAQSection(),
        ],
      ),
    );
  }
}

class HavenFAQSection extends StatelessWidget {
  const HavenFAQSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(color: Theme.of(context).colorScheme.primary, height: 300, width: double.infinity,child: Text('FAQ'),);
  }
}
