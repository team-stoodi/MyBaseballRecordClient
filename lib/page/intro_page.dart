import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_baseball_record/common/auth_button.dart';
import 'package:my_baseball_record/common/auth_color.dart';
import 'package:my_baseball_record/page/register_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.graysBlack,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 67),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                const Text(
                  '나의 오늘을\n기록하다.',
                  style: TextStyle(
                    color: AppColor.graysWhite,
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  'My Baseball Record',
                  style: TextStyle(
                      color: AppColor.graysWhite,
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //       bottom: MediaQuery.of(context).size.height * 0.3),
                //   child: const Spacer(),
                // ),
                const SizedBox(height: 220),
                AuthButton(
                    onClick: () {},
                    icon: const FaIcon(FontAwesomeIcons.apple),
                    backgroundColor: AppColor.graysWhite,
                    text: 'Apple로 계속하기'),
                const SizedBox(height: 16),
                AuthButton(
                  onClick: () {},
                  icon: Image.asset('assets/icon/카카오 로고.png'),
                  backgroundColor: AppColor.yellowColor,
                  text: '카카오로 계속하기',
                ),
                const SizedBox(height: 16),
                AuthButton(
                  onClick: () {},
                  icon: Image.asset('assets/icon/네이버 로고.png'),
                  backgroundColor: AppColor.greenColor,
                  text: '네이버로 계속하기',
                  textColor: AppColor.graysWhite,
                ),
                const SizedBox(height: 16),
                AuthButton(
                  onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RegisterPage()));
                  },
                  icon: Image.asset(
                    'assets/icon/material-symbols_alternate-email.png',
                    scale: 0.9,
                  ),
                  backgroundColor: AppColor.graysBlack,
                  borderColor: AppColor.graysWhite,
                  text: '이메일로 가입하기',
                  textColor: AppColor.graysWhite,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
