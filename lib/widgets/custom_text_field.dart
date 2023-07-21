import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final Icon? icon;
  final bool? obscureText;
  const CustomTextField(
      {super.key, required this.label, this.icon, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      decoration: InputDecoration(
        suffixIcon: icon,
        label: Text(
          label!,
          style: TextStyle(color: Colors.grey),
        ),
        focusColor: Colors.blue,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.greenAccent),
          borderRadius: BorderRadius.circular(15.0),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
