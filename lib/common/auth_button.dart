import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onClick;
  final FaIcon icon;
  final Color backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final String text;

  const AuthButton({
    super.key,
    required this.onClick,
    required this.icon,
    required this.backgroundColor,
    required this.text,
    this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        side: borderColor != null ? BorderSide(color: borderColor!) : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 14, color: textColor ?? Colors.black),
          ),
        ],
      ),
    );
  }
}
