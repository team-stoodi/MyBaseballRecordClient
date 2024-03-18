import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_baseball_record/common/app_color.dart';
import 'package:my_baseball_record/common/pressed_button.dart';

//여기서 부터 가안으로 코드 작성 해보겠습니다.
// 참고해서 작업해보세요. Statless 로 위젯 생성하면 됩니다.

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

// class AuthButton extends StatefulWidget {
//   final VoidCallback onClick;
//   final Widget icon;
//   final Color backgroundColor;
//   final Color? borderColor; // optional 쓰지 않기
//   final Color? textColor; // 무조건 상위에서 지정 색 받기
//   final Color? iconColor; // 무조건 상위에서 지정 색 받기
//   final String text;

//   const AuthButton({
//     super.key,
//     required this.onClick,
//     required this.icon,
//     required this.backgroundColor,
//     required this.text,
//     this.borderColor,
//     this.textColor,
//     this.iconColor,
//   });

//   @override
//   State<AuthButton> createState() => _AuthButtonState();
// }

// class _AuthButtonState extends State<AuthButton> {
//   bool isPressed = false;

//   @override
//   Widget build(BuildContext context) {
//     final currentBorderColor =
//         widget.borderColor?.withOpacity(0.8) ?? AppColor.transparent;
//     final currentTextColor = widget.textColor ?? AppColor.graysBlack;
//     final currentIconColor = widget.iconColor ?? currentTextColor;

//     return GestureDetector(
//       onTapDown: (_) {
//         setState(() {
//           isPressed = true;
//         });
//       },
//       onTapUp: (_) {
//         setState(() {
//           isPressed = false;
//         });
//         widget.onClick();
//       },
//       onTap: () {
//         isPressed = false;
//       },
//       child: DecoratedBox(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(32.0),
//           border: Border.all(
//             width: 0.5,
//             color: isPressed
//                 ? currentBorderColor.withOpacity(0.8)
//                 : currentBorderColor.withOpacity(1.0),
//           ),
//           color: isPressed
//               ? widget.backgroundColor.withOpacity(0.8)
//               : widget.backgroundColor,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 24.0,
//             vertical: 9.0,
//           ),
//           child: SizedBox(
//             height: 30,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Opacity(
//                   opacity: isPressed ? 0.8 : 1.0,
//                   child: IconTheme(
//                       data: IconThemeData(
//                         color: widget.textColor ?? AppColor.graysBlack,
//                       ),
//                       child: widget.icon),
//                 ),
//                 const SizedBox(width: 8),
//                 Text(
//                   widget.text,
//                   style: TextStyle(
//                       color: isPressed
//                           ? currentIconColor.withOpacity(0.8)
//                           : currentIconColor.withOpacity(1.0),
//                       fontSize: 15.0,
//                       letterSpacing: 0.2),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
