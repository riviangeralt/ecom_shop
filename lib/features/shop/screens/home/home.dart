import 'package:ecom_shop/common/widgets/custom_shapes/containers/header_container.dart';
import 'package:ecom_shop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecom_shop/common/widgets/layouts/grid_layout.dart';
import 'package:ecom_shop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecom_shop/common/widgets/texts/section_heading.dart';
import 'package:ecom_shop/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecom_shop/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecom_shop/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecom_shop/utils/constants/colors.dart';
import 'package:ecom_shop/utils/constants/image_strings.dart';
import 'package:ecom_shop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  SearchContainer(
                    text: "Search In Store",
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: AppSizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: "Popular Categories",
                          textColor: AppColors.white,
                          showActionButton: false,
                        ),
                        SizedBox(
                          height: AppSizes.spaceBtwItems,
                        ),
                        HomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      AppImages.promoBanner1,
                      AppImages.promoBanner2,
                      AppImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),

                  SectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                    showActionButton: true,
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  GridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  )
                  // const ProductCardVertical()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
