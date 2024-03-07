import 'package:flutter/material.dart';
import 'package:my_baseball_record/%08page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: Colors.black)),
      home: const MainPage(),
    );
  }
}
