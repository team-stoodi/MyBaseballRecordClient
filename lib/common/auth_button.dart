import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_baseball_record/common/app_color.dart';
import 'package:my_baseball_record/common/pressed_button.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onClick;
  final Widget icon;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final Color iconColor;
  final String text;

  const AuthButton({
    super.key,
    required this.onClick,
    required this.icon,
    required this.backgroundColor,
    required this.text,
    required this.borderColor,
    required this.textColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return PressedButton(
      borderColor: borderColor,
      backgroundColor: backgroundColor,
      onTap: onClick,
      borderWidth: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 9.0,
        ),
        child: SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconTheme(
                  data: const IconThemeData(
                    color: AppColor.graysBlack,
                  ),
                  child: icon),
              const SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(
                    fontSize: 15.0, letterSpacing: 0.2, color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
