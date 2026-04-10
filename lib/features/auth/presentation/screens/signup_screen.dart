import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skillconnect/config/constants/assets_manager.dart';
import 'package:skillconnect/config/routes/app_routes.dart';
import 'package:skillconnect/config/theme/app_colors.dart';
import 'package:skillconnect/features/common/custom_button.dart';
import 'package:skillconnect/features/common/custom_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: .center,

          children: [
            Image.asset(AssetsManager.appLogoLarge, width: 100),
            SizedBox(height: 24),
            Text(
              "Create Account",
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(color: AppColors.kPrimaryBlue),
            ),
            SizedBox(height: 16),
            Text(
              "Sign up to explore more from the skill connect !",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: 32),
            CustomTextField(
              hintText: "Enter Email",
              leadingIcon: CupertinoIcons.mail_solid,
            ),
            SizedBox(height: 24),
            CustomTextField(
              hintText: "Enter Password",
              leadingIcon: CupertinoIcons.lock_fill,
            ),
            SizedBox(height: 24),
            CustomButton(
              buttonLabel: "Continue",
              buttonLeadingIcon: Icons.person,
            ),
            SizedBox(height: 24),
            RichText(
              text: TextSpan(
                text: "Already have an account?  ",
                style: Theme.of(context).textTheme.bodySmall,
                children: [
                  TextSpan(
                    text: "Login",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.go(AppRoutes.login);
                      },
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.kAccentCyan,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
