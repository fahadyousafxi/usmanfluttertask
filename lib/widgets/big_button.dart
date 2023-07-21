import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? txt;
  const BigButton({super.key, required this.txt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: SafeArea(
        child: Material(
          child: InkWell(
            onTap: onTap,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Text(
                txt!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
