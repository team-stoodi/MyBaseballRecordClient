import 'package:flutter/material.dart';
import 'package:my_baseball_record/common/auth_text_input_widget.dart';
import 'package:my_baseball_record/common/sticky_bottom_button.dart';

// 이메일의 유효성을 검사하는 함수
bool validateEmail(String email) {
  String emailRegex = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
  RegExp regex = RegExp(emailRegex);
  return regex.hasMatch(email);
}

// 비밀번호의 유효성을 검사하는 함수
bool validatePassword(String password) {
  String passwordRegex =
      r'^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&(),])[A-Za-z\d@$!%*?&(),]{8,16}$';
  RegExp regex = RegExp(passwordRegex);
  return regex.hasMatch(password);
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isEmailValid = true; // 처음에는 에러 없음으로 판단
  bool isPasswordValid = true; // 처음에는 에러 없음으로 판단

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
      isEmailValid = validateEmail(emailController.text);
      isPasswordValid = validatePassword(passwordController.text);
    });
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
                    labelText: '이메일',
                    hintText: '이메일',
                    controller: emailController,
                    onClearPressed: () => emailController.clear(),
                    isTextNotEmpty: emailController.text.isNotEmpty,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  if (!isEmailValid)
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        '이메일을 정확하게 입력해주세요.',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  const SizedBox(height: 8),
                  if (isEmailValid)
                    const Text('비밀번호 찾기와 같은 꼭 필요한 안내 메일이 발송됩니다.'),
                  const SizedBox(height: 16),
                  AuthTextInputWidget(
                    textStyle: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    labelText: '비밀번호',
                    hintText: '비밀번호',
                    controller: passwordController,
                    onClearPressed: () => passwordController.clear(),
                    isTextNotEmpty: passwordController.text.isNotEmpty,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  const SizedBox(height: 8),
                  if (!isPasswordValid)
                    const Text(
                      '영문/숫자/특수문자를 조합한 8-16자로 확인해주세요.',
                      style: TextStyle(color: Colors.red),
                    ),
                  if (isPasswordValid)
                    const Text(
                      '영문/숫자/특수문자를 8-16자리로 조합해주세요.',
                    ),
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
                enabled: isEmailValid && isPasswordValid,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
