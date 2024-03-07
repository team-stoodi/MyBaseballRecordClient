import 'package:flutter/material.dart';
import 'package:my_baseball_record/common/auth_text_input_widget.dart';
import 'package:my_baseball_record/common/sticky_bottom_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isEmailNotEmpty = false;
  bool isPasswordNotEmpty = false;

  @override
  void initState() {
    super.initState();
    emailController.addListener(updateStatus);
    passwordController.addListener(updateStatus);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void updateStatus() {
    setState(() {
      isEmailNotEmpty = emailController.text.isNotEmpty;
      isPasswordNotEmpty = passwordController.text.isNotEmpty;
    });
  }

  void clearEmailField() {
    emailController.clear();
  }

  void clearPasswordField() {
    passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text('회원가입'),
                      Text(' | '),
                      Text('로그인'),
                    ],
                  ),
                  const SizedBox(height: 32),
                  AuthTextInputWidget(
                    textStyle: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.emailAddress,
                    labelText: '이메일',
                    hintText: '이메일',
                    controller: emailController,
                    onClearPressed: clearEmailField,
                    isTextNotEmpty: isEmailNotEmpty,
                  ),
                  const SizedBox(height: 8),
                  const Text('비밀번호 찾기와 같은 꼭 필요한 안내 메일이 발송됩니다.'),
                  const SizedBox(height: 16),
                  AuthTextInputWidget(
                    textStyle: const TextStyle(fontSize: 30),
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    labelText: '비밀번호',
                    hintText: '비밀번호',
                    controller: passwordController,
                    onClearPressed: clearPasswordField,
                    isTextNotEmpty: isPasswordNotEmpty,
                  ),
                  const SizedBox(height: 8),
                  const Text('영문/숫자/특수문자를 8-16자리로 조합해주세요.'),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: StickyBottomButton(
                text: '바로 시작하기',
                onClick: () {},
                enabled: isEmailNotEmpty && isPasswordNotEmpty,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
