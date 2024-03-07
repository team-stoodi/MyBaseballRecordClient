import 'package:flutter/material.dart';
import 'package:my_baseball_record/common/app_bar.dart';
import 'package:my_baseball_record/common/bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarWidget(
          trailingIcon: Icon(Icons.notifications_none),
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Text(
                '메인',
                style: TextStyle(fontSize: 28),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
