import 'package:flutter/material.dart';

class FlutterLayoutView extends StatelessWidget {
  const FlutterLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Layout View"),centerTitle: true,),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(100),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 2),
        ),
        width: 170,
        height: 100,
        child: Row(
          children: [
            Column(children: [Icon(Icons.call), Text("Call")]),
            SizedBox(width: 10),
            Column(children: [Icon(Icons.route), Text("Route")]),
            SizedBox(width: 10),
            Column(children: [Icon(Icons.share), Text("Share")]),
          ],
        ),
      ),
    );
  }
}