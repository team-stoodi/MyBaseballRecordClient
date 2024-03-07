import 'package:flutter/material.dart';
import 'package:my_baseball_record/common/auth_color.dart';
import 'package:my_baseball_record/page/profile_page.dart';
import 'package:my_baseball_record/page/record_page.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex = 0;

  void onTabIcon(int index) {
    setState(() {
      selectedIndex = index;
    });
    navigatePage(index);
  }

  void navigatePage(int index) {
    if (index == 0) {
      null;
    } else if (index == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const RecordPage()));
    } else if (index == 2) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const ProfilePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color selectedColor = AppColor.blackColor;

    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.sports_baseball), label: '메인'),
        BottomNavigationBarItem(icon: Icon(Icons.receipt), label: '기록'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '프로필'),
      ],
      selectedItemColor: selectedColor,
      currentIndex: selectedIndex,
      onTap: onTabIcon,
    );
  }
}
