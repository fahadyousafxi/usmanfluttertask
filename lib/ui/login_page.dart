import 'package:flutter/material.dart';
import 'package:usmanfluttertask/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo-to-use.png',
                height: 80,
              ),
              const CustomTextField(label: 'Email'),
              const CustomTextField(label: 'Password'),
            ],
          ),
        ),
      ),
    );
  }
}
