import 'package:ecom_shop/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.color,
  });

  final String title;
  final int maxLines;
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: textAlign,
          overflow: TextOverflow.ellipsis,
          maxLines: maxLines,
          style: brandTextSize == TextSizes.small
              ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
              : brandTextSize == TextSizes.medium
                  ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                  : brandTextSize == TextSizes.large
                      ? Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: color)
                      : Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: color),
        ),
      ],
    );
  }
}

// const SizedBox(width: AppSizes.xs),
//         const Icon(
//           Iconsax.verify5,
//           color: AppColors.primary,
//           size: AppSizes.iconXs,
//         )