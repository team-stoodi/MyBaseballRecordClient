import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onClick;
  final IconData iconData;
  final Color backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? iconColor;
  final String text;

  const AuthButton({
    super.key,
    required this.onClick,
    required this.iconData,
    required this.backgroundColor,
    required this.text,
    this.borderColor,
    this.textColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.0),
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
          color: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(iconData, color: textColor ?? Colors.black),
              const SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
