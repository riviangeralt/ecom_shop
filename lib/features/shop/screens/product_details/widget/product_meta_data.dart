import 'package:ecom_shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecom_shop/common/widgets/images/circular_image.dart';
import 'package:ecom_shop/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecom_shop/common/widgets/texts/product_price_text.dart';
import 'package:ecom_shop/common/widgets/texts/product_title.text.dart';
import 'package:ecom_shop/utils/constants/colors.dart';
import 'package:ecom_shop/utils/constants/enums.dart';
import 'package:ecom_shop/utils/constants/image_strings.dart';
import 'package:ecom_shop/utils/constants/sizes.dart';
import 'package:ecom_shop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.sm,
                vertical: AppSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: AppColors.black),
              ),
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            const ProductPriceText(
              price: '250',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),
        const ProductTitleText(text: 'Green Nike Sports Shoes'),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            const ProductTitleText(text: 'Status'),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            CircularImage(
              image: AppImages.cosmeticsIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? AppColors.white : AppColors.black,
            ),
            const BrandTitleTextWithVerifiedIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
