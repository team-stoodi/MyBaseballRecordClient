import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_baseball_record/common/auth_color.dart';

class AuthButton extends StatefulWidget {
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
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    final currentBorderColor =
        widget.borderColor?.withOpacity(0.8) ?? AppColor.transparent;
    final currentTextColor = widget.textColor ?? AppColor.graysBlack;
    final currentIconColor = widget.iconColor ?? currentTextColor;

    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
        widget.onClick();
      },
      onTap: () {
        isPressed = false;
      },

      // onTap: widget.onClick,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.0),
          border: Border.all(
            width: 0.5,
            color: isPressed
                ? currentBorderColor.withOpacity(0.8)
                : currentBorderColor.withOpacity(1.0),
          ),
          color: isPressed
              ? widget.backgroundColor.withOpacity(0.8)
              : widget.backgroundColor,
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
                Opacity(
                  opacity: isPressed ? 0.8 : 1.0,
                  child: IconTheme(
                      data: IconThemeData(
                        color: widget.textColor ?? AppColor.graysBlack,
                      ),
                      child: widget.icon),
                ),
                const SizedBox(width: 8),
                Text(
                  widget.text,
                  style: TextStyle(
                      color: isPressed
                          ? currentIconColor.withOpacity(0.8)
                          : currentIconColor.withOpacity(1.0),
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
