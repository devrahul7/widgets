import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,   //spacebetween ,spacearound,start , end , spaceevenly
              children: [
                Column(
                  children: [
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                  ],
                ),
                Icon(Icons.star, size: 50),
                Icon(Icons.star, size: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}