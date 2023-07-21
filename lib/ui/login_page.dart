import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usmanfluttertask/ui/register_page.dart';
import 'package:usmanfluttertask/ui/save_itesms_page.dart';
import 'package:usmanfluttertask/widgets/big_button.dart';
import 'package:usmanfluttertask/widgets/custom_text_field.dart';
import 'package:usmanfluttertask/widgets/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  const Row(
                    children: [
                      SocialLogInButton(
                          image: 'assets/apple.png', txt: 'Apple'),
                      SizedBox(width: 15),
                      SocialLogInButton(
                          image: 'assets/google.png', txt: 'Google'),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Non hai ancora un account?'),
                      TextButton(
                        onPressed: () {
                          Get.to(const RegisterPage());
                        },
                        child: const Text(
                          'Registrati',
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
      bottomNavigationBar: BigButton(
        txt: 'Login',
        onTap: () {
          Get.to(const SaveItemsPage());
        },
      ),
    );
  }
}
