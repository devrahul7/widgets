import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String ? Function(String?) ? validator;

  const MyTextfield({super.key,
  required this.hintText,
  required this.controller,
  required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      validator: validator,

    );
  }
}