import 'dart:developer';
import 'package:flutter/material.dart';

class ForgetPasswordWidget extends StatefulWidget {
  const ForgetPasswordWidget({super.key});

  @override
  State<ForgetPasswordWidget> createState() => _ForgetPasswordWidgetState();
}

class _ForgetPasswordWidgetState extends State<ForgetPasswordWidget> {
  final email = TextEditingController();
  final forgetPassKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: forgetPassKey,
        child: Padding(
            padding: const EdgeInsets.all(22),
            child: SingleChildScrollView(
                child: Column(children: [
              const SizedBox(height: 30),
              const Row(children: [
                Text("Forget Password",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))
              ]),
              const SizedBox(height: 20),
              const Row(children: [
                Text(
                    "Enter The email linked to your\n account and you will recieve an OTP Via an\n SMS",
                    style: TextStyle(fontSize: 13, color: Colors.grey))
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
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      labelText: 'Email Address',
                      labelStyle: const TextStyle(fontSize: 14))),
              const SizedBox(height: 6),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                        textColor: Colors.deepOrange,
                        onPressed: () {},
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
                    if (forgetPassKey.currentState!.validate()) {
                    } else {
                      log("error");
                    }
                  },
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  child: const Text("Reset Password",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              const SizedBox(height: 16),
              const Text("Don't have an account yet?",
                  style: TextStyle(fontSize: 13, color: Colors.black)),
              MaterialButton(
                  textColor: Colors.blue,
                  onPressed: () {},
                  child: const Text("Create an Account",
                      style: TextStyle(fontSize: 14)))
            ]))));
  }
}
