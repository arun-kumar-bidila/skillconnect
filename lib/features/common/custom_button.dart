import 'package:flutter/material.dart';
import 'package:skillconnect/config/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final IconData buttonLeadingIcon;
  final String buttonLabel;
  const CustomButton({
    super.key,
    required this.buttonLabel,
    required this.buttonLeadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 12, horizontal: 8),
      width: .infinity,
      decoration: BoxDecoration(
        color: AppColors.kActiveButtonColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: .center,
        children: [
          Icon(buttonLeadingIcon, size: 24, color: Colors.white),
          SizedBox(width: 8),
          Text(
            buttonLabel,
            style: Theme.of(
              context,
            ).textTheme.labelLarge!.copyWith(color: AppColors.kWhiteColor),
          ),
           SizedBox(width:24 ,)
        ],
      ),
    );
  }
}
