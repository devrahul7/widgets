import 'package:flutter/material.dart';

class ColumnView2 extends StatelessWidget {
  const ColumnView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rows and Column "), centerTitle: false),

      body: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Text("Container 1"),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  color: Colors.brown,
                  child: Text("Container 2"),
                ),
              ),
              Expanded(
                // fit: FlexFit.loose, used in flexibile
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Text("Container 3"),
                ),
              ),
              // SizedBox(height: 60),
            ],
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.lightBlueAccent,
              child: Text("Containner 1"),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.brown,
              child: Text("Containner 2"),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.lightBlue,
              child: Text("Containner 3"),
            ),
          ),
        ],
      ),
    );
  }
}
