import 'package:flutter/material.dart';
import 'package:my_baseball_record/common/auth_color.dart';

class AuthTextInputWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final VoidCallback onClearPressed;
  final bool isTextNotEmpty;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextStyle? textStyle;
  final Function(String) onChanged;

  const AuthTextInputWidget({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.onClearPressed,
    required this.isTextNotEmpty,
    required this.keyboardType,
    this.obscureText = false,
    this.textStyle,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColor.greyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(
                color: AppColor.blackColor50,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          TextField(
            style: textStyle,
            keyboardType: keyboardType,
            obscureText: obscureText,
            controller: controller,
            onChanged: onChanged,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 20,
                color: AppColor.blackColor10,
                fontWeight: FontWeight.bold,
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.cancel),
                color: isTextNotEmpty
                    ? AppColor.blackColor50
                    : AppColor.blackColor10,
                onPressed: onClearPressed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
