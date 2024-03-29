import 'package:ecom_shop/utils/constants/colors.dart';
import 'package:ecom_shop/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecom_shop/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecom_shop/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecom_shop/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecom_shop/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecom_shop/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecom_shop/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecom_shop/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textTheme: CustomTextTheme.lightTextTheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CustomTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.black,
    primaryColor: Colors.black,
    textTheme: CustomTextTheme.darkTextTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: CustomChipTheme.darkChipTheme,
    checkboxTheme: CustomCheckboxTheme.darkCheckboxTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CustomTextFieldTheme.darkInputDecorationTheme,
  );
}
