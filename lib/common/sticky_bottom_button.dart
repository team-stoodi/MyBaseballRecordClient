import 'package:flutter/material.dart';

class StickyBottomButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  final bool enabled;
  const StickyBottomButton({
    super.key,
    required this.text,
    required this.onClick,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    final Color greyBtnColor = Colors.grey.shade300;
    const Color textColor = Colors.white;

    Color buttonColor = enabled ? Colors.black : greyBtnColor;
    // Color textColor = Colors.white;

    return BottomAppBar(
      color: enabled ? buttonColor : greyBtnColor,
      child: GestureDetector(
        onTap: enabled ? onClick : null,
        child: Container(
          height: 60,
          alignment: Alignment.center,
          child: Text(
            text,
            style:
                const TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
