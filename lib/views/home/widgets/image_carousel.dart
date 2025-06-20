import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haven/utils/constants/colors.dart';
import 'package:haven/utils/constants/image_urls.dart';
import 'package:haven/utils/controllers/carousel_controller.dart';

class ImageCarousel extends StatelessWidget {
  final List pics;
  final bool allowScroll;
  final bool showIndicators;

  ImageCarousel({
    super.key,
    required this.pics,
    this.allowScroll = true,
    this.showIndicators = true,
  });

  final ImageCarouselController controller = Get.put(ImageCarouselController());

  @override
  Widget build(BuildContext context) {
    bool hasImages = pics.isNotEmpty;

    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: hasImages ? pics.length : 1,
          options: CarouselOptions(
            height: 250,
            autoPlay: hasImages,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayCurve: Curves.fastOutSlowIn,
            viewportFraction: 1,
            enableInfiniteScroll: hasImages,
            scrollPhysics:
                allowScroll ? const AlwaysScrollableScrollPhysics() : const NeverScrollableScrollPhysics(),
            onPageChanged: (index, reason) {
              controller.updateIndex(index);
            },
          ),
          itemBuilder: (context, index, realIndex) {
            return Stack(
              fit: StackFit.expand,
              children: [
                hasImages
                    ? pics[index]
                    : Image.asset(
                        HavenImages.havenImageMain,
                        fit: BoxFit.cover,
                      ),
              ],
            );
          },
        ),
        if (showIndicators && hasImages)
          Positioned(
            bottom: 12,
            left: 0,
            right: 0,
            child: ImageIndexIndicators(pics: pics, controller: controller),
          ),
      ],
    );
  }
}

class ImageIndexIndicators extends StatelessWidget {
  final List pics;
  final ImageCarouselController controller;

  const ImageIndexIndicators({super.key, required this.pics, required this.controller});

  @override
  Widget build(BuildContext context) {
    controller.currentIndex.value = 0;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pics.asMap().entries.map((entry) {
              return Container(
                width: controller.currentIndex.value == entry.key
                      ? 15
                      : 7,
                height: 7,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: HavenColors.whiteAccent
                ),
              );
            }).toList(),
          )),
    );
  }
}