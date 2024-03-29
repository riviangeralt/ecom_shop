import 'package:ecom_shop/utils/constants/image_strings.dart';
import 'package:ecom_shop/utils/constants/sizes.dart';
import 'package:ecom_shop/utils/constants/text_strings.dart';
import 'package:ecom_shop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 100,
          image: AssetImage(
            dark ? AppImages.logoDarkMode : AppImages.logoLightMode,
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
        Text(
          AppTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: AppSizes.sm,
        ),
        Text(
          AppTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
