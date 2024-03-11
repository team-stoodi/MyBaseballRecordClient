import 'package:flutter/material.dart';

class PressedButton extends StatefulWidget {
  final Color borderColor;
  final Color backgroundColor;
  final Widget child;
  final VoidCallback onTap;
  final double borderWidth;

  const PressedButton({
    super.key,
    required this.borderColor,
    required this.backgroundColor,
    required this.child,
    required this.onTap,
    required this.borderWidth,
  });

  @override
  State<PressedButton> createState() => _PressedButtonState();
}

class _PressedButtonState extends State<PressedButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   isPressed = false;
      //   widget.onTap();
      // },
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
        // widget.onTap();
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.0),
          border: Border.all(
            width: widget.borderWidth,
            color: isPressed
                ? widget.borderColor.withOpacity(0.8)
                : widget.borderColor.withOpacity(1.0),
          ),
          color: isPressed
              ? widget.backgroundColor.withOpacity(0.8)
              : widget.backgroundColor,
        ),
        child: Opacity(
          opacity: isPressed ? 0.8 : 1.0,
          child: widget.child,
        ),
      ),
    );
  }
}
