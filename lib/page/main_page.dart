import 'package:flutter/material.dart';
import 'package:my_baseball_record/common/app_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarWidget(
          trailingIcon: Icon(Icons.alarm),
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
