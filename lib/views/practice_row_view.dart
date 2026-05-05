import 'package:flutter/material.dart';

class PracticeRowView extends StatelessWidget {
  const PracticeRowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            height: 80,
            width: 150,

            // padding: EdgeInsets.only(left: 3, top: 16),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(Icons.call, color: Colors.blue),
                      Text("Call"),
                      // Text("Call"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.route, color: Colors.green),
                      Text("Route"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share, color: Colors.greenAccent),
                      Text("Share"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
