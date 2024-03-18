import 'package:flutter/material.dart';
import 'package:my_baseball_record/common/app_color.dart';
import 'package:my_baseball_record/common/app_text_list.dart';
import 'package:my_baseball_record/common/app_text_style.dart';
import 'package:my_baseball_record/common/auth_dialog.dart';
import 'package:my_baseball_record/common/auth_text_input_widget.dart';
import 'package:my_baseball_record/common/sticky_bottom_button.dart';
import 'package:my_baseball_record/common/util/validate.dart';

class FindPasswordPage extends StatefulWidget {
  const FindPasswordPage({super.key});

  @override
  State<FindPasswordPage> createState() => _FindPasswordPageState();
}

class _FindPasswordPageState extends State<FindPasswordPage> {
  final TextEditingController emailController = TextEditingController();

  bool isInputValid = false;

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void checkInputValid() {
    final email = emailController.text;
    if (!validateEmail(email)) {
      setState(() {
        isInputValid = false;
      });
    } else {
      setState(() {
        isInputValid = true;
      });
    }
  }

  void showResetPasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AuthDialog(
          email: emailController.text,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppTextList.passwordFindText,
                    style: AppTextStyle.h224B.copyWith(
                      color: AppColor.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    AppTextList.sendResetPasswordEmailText,
                    style: AppTextStyle.body315M
                        .copyWith(color: AppColor.textHint, height: 1.5),
                  ),
                  const SizedBox(height: 48),
                  AuthTextInputWidget(
                    textStyle: AppTextStyle.body120M
                        .copyWith(color: AppColor.textPrimary),
                    labelText: AppTextList.emailLabel,
                    hintText: AppTextList.emailLabel,
                    controller: emailController,
                    onClearPressed: () => emailController.clear(),
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {},
                    onEditingComplete: checkInputValid,
                    isEmailValid: false,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: StickyBottomButton(
                text: AppTextList.resetLink,
                onClick: () {
                  if (isInputValid) {
                    showResetPasswordDialog(context);
                  }
                },
                enabled: isInputValid,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
