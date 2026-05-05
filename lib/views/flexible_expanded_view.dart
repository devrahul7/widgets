import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Flexible Expanded View"),centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child:Container(
          
              color: Colors.yellow,
              child: const Center(
                child:  Text("Hello From COntainer 1")),
          
            )
           ),

          
           
           Flexible(
            child: Container(
                   color: Colors.red,
            child: Center(child: Text("Hello from Container 2")),
            
           ))
        ],
        
      ),
       

    );
  }
}