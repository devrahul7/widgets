import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SafeArea(
        child: RichText(text: const TextSpan(
          text: "Hello ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 36,
          ),
          children: <TextSpan>[
            TextSpan(
              text: "bold ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
              )
            ),
        
            TextSpan(
              text: "world!\n",
            ),

            TextSpan(
              text:  "the future belongs to those \nwho prepare for it today",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,fontSize: 25
              )

            )
          ]
        )
        ),
      ),
    );
  }
}