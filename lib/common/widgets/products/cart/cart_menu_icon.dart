import 'package:ecom_shop/utils/constants/colors.dart';
import 'package:ecom_shop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 5,
          top: 5,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: dark ? AppColors.white : AppColors.black,
            ),
            child: Center(
              child: Text(
                '20',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: dark ? AppColors.black : AppColors.white,
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
