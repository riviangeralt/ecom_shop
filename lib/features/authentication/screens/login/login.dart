import 'package:ecom_shop/common/styles/spacing_styles.dart';
import 'package:ecom_shop/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecom_shop/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
