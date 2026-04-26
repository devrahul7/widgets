import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  const TextView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      
      body: SafeArea(
      
        child: Container(
          color: Colors.amber,
          width: double.infinity,
          
          height: double.infinity,
          
          child: Center(
            child: Text("HelloWorld",
            style: TextStyle(fontSize: 66,fontWeight: FontWeight.bold,color: Colors.green),),
          ),
        ),
      ),
    );
  }
}