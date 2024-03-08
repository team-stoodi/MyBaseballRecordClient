import 'package:flutter/material.dart';
import 'package:my_baseball_record/common/auth_color.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onClick;
  final Widget icon;
  final Color backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? iconColor;
  final String text;

  const AuthButton({
    super.key,
    required this.onClick,
    required this.icon,
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
            width: 0.5,
            color: borderColor ?? AppColor.transparent,
          ),
          color: backgroundColor,
        ),
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
                    data:
                        IconThemeData(color: textColor ?? AppColor.graysBlack),
                    child: icon),
                const SizedBox(width: 8),
                Text(
                  text,
                  style: TextStyle(
                      color: textColor ?? AppColor.graysBlack,
                      fontSize: 15.0,
                      letterSpacing: 0.2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
