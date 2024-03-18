import 'package:flutter/material.dart';
import 'package:my_baseball_record/page/login_page.dart';
import 'package:my_baseball_record/page/register_page.dart';

class EmailAuthPage extends StatefulWidget {
  const EmailAuthPage({super.key});

  @override
  State<EmailAuthPage> createState() => _EmailAuthPageState();
}

class _EmailAuthPageState extends State<EmailAuthPage> {
  bool _isRegistering = true;

  void _toggleAuthMode() {
    setState(() {
      _isRegistering = !_isRegistering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
      ),
      body: _isRegistering
          ? RegisterPage(
              toggleAuthMode: _toggleAuthMode,
            )
          : LoginPage(
              toggleAuthMode: _toggleAuthMode,
            ),
    );
  }
}
