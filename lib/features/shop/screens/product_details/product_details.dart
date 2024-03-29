import 'package:ecom_shop/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:ecom_shop/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:ecom_shop/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:ecom_shop/features/shop/screens/product_details/widget/rating_share_widget.dart';
import 'package:ecom_shop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = AppHelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image slider
            ProductImageSlider(),
            // product details
            Padding(
              padding: EdgeInsets.only(
                right: AppSizes.defaultSpace,
                left: AppSizes.defaultSpace,
                bottom: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  RatingAndShare(),
                  ProductMetaData(),
                  ProductAttributes()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
