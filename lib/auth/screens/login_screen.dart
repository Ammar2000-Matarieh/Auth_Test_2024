import 'package:auth_test_2024/auth/widgets/widget_login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'LoginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      const SafeArea(child: Scaffold(body: LoginWidget()));
}
