import 'package:auth_test_2024/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

class RunApplication extends StatelessWidget {
  const RunApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}