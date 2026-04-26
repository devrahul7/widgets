import 'package:flutter/material.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(66.0))
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink),
              ),
              labelText: "Enter Name"
            ),
          
          ),
        ),
      ),


    );
  }
}