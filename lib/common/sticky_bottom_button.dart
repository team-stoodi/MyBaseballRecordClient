import 'package:flutter/material.dart';
import 'package:my_baseball_record/common/auth_color.dart';

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
    const greyBtnColor = AppColor.graysBlack20;
    const textColor = AppColor.graysWhite;

    Color buttonColor = enabled ? AppColor.graysBlack : greyBtnColor;
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
