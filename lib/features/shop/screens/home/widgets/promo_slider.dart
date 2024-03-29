import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom_shop/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecom_shop/common/widgets/images/rounded_image.dart';
import 'package:ecom_shop/features/shop/controllers/home_controller.dart';
import 'package:ecom_shop/utils/constants/colors.dart';
import 'package:ecom_shop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (url) => RoundedImage(imageUrl: url),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) =>
                controller.updateCarouselIndicator(index),
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? AppColors.primary
                      : AppColors.grey,
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
