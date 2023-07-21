import 'package:flutter/material.dart';
import 'package:usmanfluttertask/widgets/big_button.dart';
import 'package:usmanfluttertask/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                      const Text('Non hai ancora un account?'),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BigButton(
        txt: 'Registrati',
      ),
    );
  }
}
