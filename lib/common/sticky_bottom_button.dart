import 'package:flutter/material.dart';
import 'package:my_baseball_record/common/app_color.dart';
import 'package:my_baseball_record/common/app_text_style.dart';

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

    Color buttonColor = enabled ? AppColor.graysBlack : greyBtnColor;

    return BottomAppBar(
      color: enabled ? buttonColor : greyBtnColor,
      child: GestureDetector(
        onTap: enabled ? onClick : null,
        child: Container(
          height: 60,
          alignment: Alignment.center,
          child: Text(
            text,
            style: AppTextStyle.body315M.copyWith(color: AppColor.graysWhite),
          ),
        ),
      ),
    );
  }
}
