import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_baseball_record/common/auth_text_input_widget.dart';
import 'package:my_baseball_record/common/sticky_bottom_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('회원가입'),
                      Text(' | '),
                      Text('로그인'),
                    ],
                  ),
                  SizedBox(height: 32),
                  AuthTextInputWidget(
                    labelText: '이메일',
                    hintText: '이메일',
                  ),
                  SizedBox(height: 8),
                  Text('비밀번호 찾기와 같은 꼭 필요한 안내 메일이 발송됩니다.'),
                  SizedBox(height: 16),
                  AuthTextInputWidget(
                    labelText: '비밀번호',
                    hintText: '비밀번호',
                  ),
                  SizedBox(height: 8),
                  Text('영문/숫자/특수문자를 8-16자리로 조합해주세요.'),
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
                enabled: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
