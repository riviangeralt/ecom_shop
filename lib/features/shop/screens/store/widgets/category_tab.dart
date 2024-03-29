import 'package:ecom_shop/common/widgets/brands/brand_show_case.dart';
import 'package:ecom_shop/common/widgets/layouts/grid_layout.dart';
import 'package:ecom_shop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecom_shop/common/widgets/texts/section_heading.dart';
import 'package:ecom_shop/utils/constants/image_strings.dart';
import 'package:ecom_shop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(
            AppSizes.defaultSpace,
          ),
          child: Column(
            children: [
              const BrandShowCase(
                images: [
                  AppImages.productImage1,
                  AppImages.productImage2,
                  AppImages.productImage3,
                ],
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              SectionHeading(
                title: "You might like",
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
