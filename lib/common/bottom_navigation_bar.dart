import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const Color selectedColor = Colors.black;

    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.sports_baseball), label: '메인'),
        BottomNavigationBarItem(icon: Icon(Icons.receipt_rounded), label: '기록'),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: '프로필'),
      ],
      selectedItemColor: selectedColor,
    );
  }
}
