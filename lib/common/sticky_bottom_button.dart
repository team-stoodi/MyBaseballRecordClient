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
    Color buttonColor = enabled ? Colors.black : Colors.grey.shade300;
    Color textColor = Colors.white;

    return BottomAppBar(
      color: enabled ? buttonColor : Colors.grey.shade300,
      child: GestureDetector(
        onTap: enabled ? onClick : null,
        child: Container(
          height: 60,
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
