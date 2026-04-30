import 'package:flutter/material.dart';

class ColumnButtonView extends StatelessWidget {
  const ColumnButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Coloumn Button View")),

      body: Container(
        width: double.infinity,
        color: Colors.yellowAccent,

        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //it makes button in center
          crossAxisAlignment:
              CrossAxisAlignment.start, //three types start , end , strecth
          children: [
            TextButton(onPressed: () {}, child: const Text("BUtton 1")),
            ElevatedButton(onPressed: () {}, child: const Text("BUtton 2")),
            OutlinedButton(onPressed: () {}, child: const Text("BUtton 3")),
          ],
        ),
      ),
    );
  }
}
