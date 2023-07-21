import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usmanfluttertask/ui/login_page.dart';
import 'package:usmanfluttertask/widgets/big_button.dart';
import 'package:usmanfluttertask/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo-to-use.png',
                    height: 80,
                  ),
                  SizedBox(height: size.height / 10),
                  const CustomTextField(label: 'Email'),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    label: 'Password',
                    obscureText: true,
                    icon: Icon(Icons.remove_red_eye_outlined),
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    label: 'Confirm Password',
                    obscureText: true,
                    icon: Icon(Icons.remove_red_eye_outlined),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Hai già un account?'),
                      TextButton(
                        onPressed: () {
                          Get.to(const LoginPage());
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'eccetto termini e condizioni',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Checkbox(
                  value: check,
                  onChanged: (value) {
                    setState(() {
                      check = value!;
                    });
                  })
            ],
          ),
          BigButton(
            txt: 'Registrati',
            onTap: () {
              Get.to(const LoginPage());
            },
          ),
        ],
      ),
    );
  }
}
