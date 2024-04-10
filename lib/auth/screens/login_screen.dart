import 'package:auth_test_2024/auth/widgets/widget_login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final loginKey = GlobalKey<FormState>();
    return const SafeArea(
        child:  Scaffold(body: LoginWidget()));
  }
}
