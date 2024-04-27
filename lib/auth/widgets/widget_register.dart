import 'dart:developer';

import 'package:auth_test_2024/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final email = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final registerKey = GlobalKey<FormState>();
  final isShowEye = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerKey,
      child: Padding(
          padding: const EdgeInsets.all(22),
          child: SingleChildScrollView(
              child: Column(children: [
            const SizedBox(height: 50),
            const Row(
              children: [
                Text("Create Your\n account",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(height: 30),
            TextFormField(
              validator: (String? firstName) {
                if (firstName == null || firstName.isEmpty) {
                  return 'firstName is not Empty or not Equal null value Please Enter firstName valid';
                }
                if (firstName.length < 4 || firstName.length < 20) {
                  return 'The firstName can not less than 4 letters or not greater than 20 letters ';
                }
                return null;
              },
              controller: firstName,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: 'First Name',
                labelStyle: const TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 14),
            TextFormField(
              validator: (String? lastName) {
                if (lastName == null || lastName.isEmpty) {
                  return 'lastName is not Empty or not Equal null value Please Enter lastName valid';
                }
                if (lastName.length < 4 || lastName.length < 20) {
                  return 'The lastName can not less than 4 letters or not greater than 20 letters ';
                }
                return null;
              },
              controller: lastName,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: 'Last Name',
                labelStyle: const TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 14),
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
                prefixIcon: const Icon(Icons.mail, color: Colors.grey),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: 'New Email Address',
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
                prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                suffixIcon: isShowEye
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: 'Password',
                labelStyle: const TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 60),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                minWidth: 150,
                height: 45,
                onPressed: () {
                  if (registerKey.currentState!.validate()) {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  } else {
                    log("error");
                  }
                },
                color: Colors.deepOrange,
                textColor: Colors.white,
                child: const Text("Confirm ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            const SizedBox(height: 16),
            const Text("Already have an account?",
                style: TextStyle(fontSize: 13, color: Colors.black)),
            MaterialButton(
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                child: const Text(
                  "sign into your account",
                  style: TextStyle(fontSize: 14),
                ))
          ]))),
    );
  }
}
