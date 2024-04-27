import 'dart:developer';
import 'package:auth_test_2024/auth/screens/forget_pass_screen.dart';
import 'package:auth_test_2024/auth/screens/home_screen.dart';
import 'package:auth_test_2024/auth/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final isShowEye = false;
  final email = TextEditingController();
  final password = TextEditingController();
  final loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginKey,
      child: Padding(
          padding: const EdgeInsets.all(22),
          child: SingleChildScrollView(
              child: Column(children: [
            const SizedBox(height: 50),
            const Row(children: [
              Text("Hey There!",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black))
            ]),
            const SizedBox(height: 20),
            const Row(children: [
              Text(
                  "Welcome back, Please use your email\n and password to login",
                  style: TextStyle(fontSize: 15, color: Colors.grey))
            ]),
            const SizedBox(height: 30),
            TextFormField(
              validator: (String? email) {
                if (email == null || email.isEmpty) {
                  return 'Email is not Empty or not Equal null value Please Enter Email valid';
                }
                if (email.length < 4 || email.length < 20) {
                  return 'The Email can not less than 4 letters or not greater than 20 letters ';
                }
                return null;
              },
              controller: email,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: 'Email Address',
                labelStyle: const TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 14),
            TextFormField(
              validator: (String? password) {
                if (password == null || password.isEmpty) {
                  return 'The password is not null value or not Empty please Enter password valid';
                }
                if (password.length < 8 || password.length > 20) {
                  return 'The Password can not less than 8 letters or not greater than 20 letters ';
                }
                return null;
              },
              controller: password,
              decoration: InputDecoration(
                suffixIcon: isShowEye
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: 'Password',
                labelStyle: const TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 6),
            Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                      textColor: Colors.deepOrange,
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const ForgetPasswordScreen();
                        }));
                      },
                      child: const Text("Forget Password?",
                          style: TextStyle(fontSize: 14)))
                ]),
            const SizedBox(height: 60),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                minWidth: 150,
                height: 45,
                onPressed: () {
                  if (loginKey.currentState!.validate()) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const HomeScreen();
                    }));
                  } else {
                    log("error");
                  }
                },
                color: Colors.deepOrange,
                textColor: Colors.white,
                child: const Text("Login",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            const SizedBox(height: 16),
            const Text("Don't have an account yet?",
                style: TextStyle(fontSize: 13, color: Colors.black)),
            MaterialButton(
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const RegisterScreen();
                  }));
                },
                child: const Text(
                  "Create an Account",
                  style: TextStyle(fontSize: 14),
                ))
          ]))),
    );
  }
}
