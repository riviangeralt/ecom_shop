import 'package:ecom_shop/features/authentication/screens/login/login.dart';
import 'package:ecom_shop/utils/constants/image_strings.dart';
import 'package:ecom_shop/utils/constants/sizes.dart';
import 'package:ecom_shop/utils/constants/text_strings.dart';
import 'package:ecom_shop/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, actions: [
        IconButton(
          onPressed: () => Get.offAll(() => const LoginScreen()),
          icon: const Icon(
            CupertinoIcons.clear,
          ),
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              width: AppHelperFunctions.screenWidth() * 0.6,
              image: const AssetImage(
                AppImages.deliveredEmailIllustration,
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            Text(
              AppTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            Text(
              AppTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                child: const Text(AppTexts.appDone),
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(AppTexts.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
