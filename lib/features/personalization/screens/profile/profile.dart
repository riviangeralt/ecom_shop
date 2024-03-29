import 'package:ecom_shop/common/widgets/appbar/appbar.dart';
import 'package:ecom_shop/common/widgets/images/circular_image.dart';
import 'package:ecom_shop/common/widgets/texts/section_heading.dart';
import 'package:ecom_shop/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecom_shop/utils/constants/image_strings.dart';
import 'package:ecom_shop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: AppImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change profile picture'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              const SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              ProfileMenu(
                title: "Name",
                value: 'Aasim Sayyed',
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Username",
                value: 'asayyex',
                onPressed: () {},
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              ProfileMenu(
                  title: "User ID",
                  value: '12345',
                  onPressed: () {},
                  icon: Iconsax.copy),
              ProfileMenu(
                title: "E-mail",
                value: 'asayyex@gmail.com',
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Phone Number",
                value: '9192939495',
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Gender",
                value: 'Male',
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Date of Birth",
                value: '19 Oct, 1994',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
