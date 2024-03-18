import 'package:flutter/material.dart';
import 'package:my_baseball_record/common/app_color.dart';
import 'package:my_baseball_record/common/app_text_list.dart';
import 'package:my_baseball_record/common/app_text_style.dart';
import 'package:my_baseball_record/common/auth_text_input_widget.dart';
import 'package:my_baseball_record/common/util/validate.dart';
import 'package:my_baseball_record/page/find_password_page.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback toggleAuthMode;

  const LoginPage({
    super.key,
    required this.toggleAuthMode,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool checkEmail = false;
  bool checkPassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void checkEmailStatus() {
    final email = emailController.text;
    if (!validateEmail(email)) {
      setState(() {
        checkEmail = false;
      });
    } else {
      setState(() {
        checkEmail = true;
        checkPassword = false;
      });
      FocusScope.of(context).nextFocus();
    }
  }

  void checkPasswordStatus() {
    final password = passwordController.text;
    if (!validatePassword(password)) {
      setState(() {
        checkPassword = false;
      });
    } else {
      setState(() {
        checkPassword = false;
      });
      FocusScope.of(context).nextFocus();
    }
  }

  void navigateToFindPasswordPage() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const FindPasswordPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: widget.toggleAuthMode,
                        child: Text(
                          AppTextList.registerText,
                          style: AppTextStyle.h224B
                              .copyWith(color: AppColor.textPrimary20),
                        ),
                      ),
                      Text(
                        AppTextList.divider,
                        style: AppTextStyle.h224B
                            .copyWith(color: AppColor.graysGray),
                      ),
                      Text(
                        AppTextList.loginText,
                        style: AppTextStyle.h224B
                            .copyWith(color: AppColor.textPrimary),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  AuthTextInputWidget(
                    textStyle: AppTextStyle.body120M
                        .copyWith(color: AppColor.textPrimary),
                    labelText: AppTextList.emailLabel,
                    hintText: AppTextList.emailLabel,
                    controller: emailController,
                    onClearPressed: () => emailController.clear(),
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {},
                    onEditingComplete: checkEmailStatus,
                    isEmailValid: checkEmail,
                  ),
                  const SizedBox(height: 19),
                  AuthTextInputWidget(
                    obscureText: true,
                    textStyle: AppTextStyle.body120M
                        .copyWith(color: AppColor.textPrimary),
                    labelText: AppTextList.passwordText,
                    hintText: AppTextList.passwordText,
                    controller: passwordController,
                    onClearPressed: () => passwordController.clear(),
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {},
                    onEditingComplete: checkPasswordStatus,
                    isEmailValid: checkPassword,
                  ),
                  const SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: navigateToFindPasswordPage,
                        child: Text(
                          AppTextList.passwordFindText,
                          style: AppTextStyle.caption113B1
                              .copyWith(color: AppColor.textHint),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
