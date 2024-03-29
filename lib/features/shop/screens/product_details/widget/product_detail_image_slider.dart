import 'package:ecom_shop/common/widgets/appbar/appbar.dart';
import 'package:ecom_shop/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:ecom_shop/common/widgets/icons/circular_icon.dart';
import 'package:ecom_shop/common/widgets/images/rounded_image.dart';
import 'package:ecom_shop/utils/constants/colors.dart';
import 'package:ecom_shop/utils/constants/image_strings.dart';
import 'package:ecom_shop/utils/constants/sizes.dart';
import 'package:ecom_shop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
      child: Container(
        color: dark ? AppColors.darkerGrey : AppColors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(AppSizes.productItemRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(AppImages.productImage10),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              left: 20,
              child: SizedBox(
                height: 70,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (index, _) => RoundedImage(
                    imageUrl: AppImages.productImage1,
                    width: 70,
                    backgroundColor: dark ? AppColors.dark : AppColors.white,
                    border: Border.all(color: AppColors.primary),
                    padding: const EdgeInsets.all(AppSizes.sm),
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                ),
              ),
            ),
            const CustomAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                  size: AppSizes.md,
                  width: AppSizes.lg,
                  height: AppSizes.lg,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
