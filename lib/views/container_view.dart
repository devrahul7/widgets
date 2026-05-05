import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,

      body: SafeArea(
        child: Container(
          
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.centerRight,

          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,

            decoration: BoxDecoration(
              shape: BoxShape.circle,

              color: Colors.green,
              border: Border.all(color: Colors.black, width: 6),
            ),
            child: const Text("I am container"),
          ),
        ),
      ),
    );
  }
}
