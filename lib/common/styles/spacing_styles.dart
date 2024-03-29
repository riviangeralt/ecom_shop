import 'package:ecom_shop/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppSpacingStyle {
  AppSpacingStyle._();

  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AppSizes.appBarHeight + 10,
    left: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
  );
}
