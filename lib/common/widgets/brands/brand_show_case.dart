import 'package:ecom_shop/common/widgets/brands/brand_card.dart';
import 'package:ecom_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecom_shop/utils/constants/colors.dart';
import 'package:ecom_shop/utils/constants/sizes.dart';
import 'package:ecom_shop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(
        bottom: AppSizes.spaceBtwItems,
      ),
      child: Column(
        children: [
          const BrandCard(showBorder: false),
          const SizedBox(
            height: AppSizes.spaceBtwItems,
          ),
          Padding(
            padding: const EdgeInsets.all(AppSizes.md),
            child: Row(
              children: images.map((image) {
                final bool isLast = images.indexOf(image) == images.length - 1;
                return brandTopProductImageWidget(image, context, isLast);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context, isLast) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: dark ? AppColors.darkerGrey : AppColors.light,
        padding: const EdgeInsets.all(
          AppSizes.md,
        ),
        margin: EdgeInsets.only(
          right: isLast ? 0 : AppSizes.sm,
        ),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(
            image,
          ),
        ),
      ),
    );
  }
}
