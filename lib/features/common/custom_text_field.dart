import 'package:flutter/material.dart';
import 'package:skillconnect/config/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData leadingIcon;
  final bool isPasswordField;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.leadingIcon,
    this.isPasswordField = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.kTextFieldBorderColor,
          width: 1.5
        ),
        borderRadius: BorderRadius.circular(16)
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Icon(
            leadingIcon,
            size: 24,
            color: AppColors.kTextFieldLeadingIconColor,
          ),
         

          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:.symmetric(horizontal: 16) ,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kLightGray
                  ,
                ),
              ),
            ),
          ),

          Icon(
            isPasswordField ? Icons.visibility_off : Icons.visibility,
            size: 24,
            color: AppColors.kTextFieldLeadingIconColor,
          ),
        ],
      ),
    );
  }
}
