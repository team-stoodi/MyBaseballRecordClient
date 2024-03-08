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
      backgroundColor: AppColor.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 67),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                const Text(
                  '나의 오늘을\n기록하다.',
                  style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  'My Baseball Record',
                  style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w900),
                ),
                // Padding(
                //   padding: EdgeInsets.only(
                //       bottom: MediaQuery.of(context).size.height * 0.3),
                //   child: const Spacer(),
                // ),
                const SizedBox(height: 249),
                AuthButton(
                    onClick: () {},
                    icon: const FaIcon(FontAwesomeIcons.apple),
                    backgroundColor: AppColor.whiteColor,
                    text: 'Apple로 계속하기'),
                const SizedBox(height: 16),
                AuthButton(
                  onClick: () {},
                  icon: const FaIcon(FontAwesomeIcons.k),
                  backgroundColor: AppColor.yellowColor,
                  text: '카카오로 계속하기',
                ),
                const SizedBox(height: 16),
                AuthButton(
                    onClick: () {},
                    icon: const FaIcon(FontAwesomeIcons.n),
                    backgroundColor: AppColor.greenColor,
                    text: '네이버로 계속하기'),
                const SizedBox(height: 16),
                AuthButton(
                  onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RegisterPage()));
                  },
                  icon: const FaIcon(FontAwesomeIcons.at),
                  backgroundColor: AppColor.blackColor,
                  borderColor: AppColor.whiteColor,
                  text: '이메일로 가입하기',
                  textColor: AppColor.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
