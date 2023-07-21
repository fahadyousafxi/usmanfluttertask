import 'package:flutter/material.dart';

class SocialLogInButton extends StatelessWidget {
  final String? image;
  final String? txt;

  const SocialLogInButton({super.key, required this.image, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image!,
              height: 35,
              width: 40,
            ),
            Text(
              txt!,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
