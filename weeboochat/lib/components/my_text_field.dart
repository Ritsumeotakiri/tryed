import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({super.key, required this.controller, required this.hintText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller , 
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder:const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
fillColor: Colors.grey[100],
filled: true,
hintText: hintText,
hintStyle: const TextStyle(color: Color.fromARGB(86, 0, 0, 0)), 
      ),
    );
  }
}
