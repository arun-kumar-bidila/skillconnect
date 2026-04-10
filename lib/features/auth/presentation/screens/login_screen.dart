import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skillconnect/config/theme/app_colors.dart';
import 'package:skillconnect/features/common/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: .center,

          children: [
            Text(
              "Create Account",
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(color: AppColors.kPrimaryBlue),
            ),
            SizedBox(height: 16),
            Text(
              "Sign up to explore more from the skill connect",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 32),
            CustomTextField(
              hintText: "Enter Email",
              leadingIcon: CupertinoIcons.mail_solid,
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: "Enter Password",
              leadingIcon: CupertinoIcons.lock_fill,
            ),
          ],
        ),
      ),
    );
  }
}
