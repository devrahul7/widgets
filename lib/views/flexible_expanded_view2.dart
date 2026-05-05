import 'package:flutter/material.dart';
import 'package:widgets/utils/my_snackbar.dart';

class FlexibleExpandedView2 extends StatelessWidget {
  const FlexibleExpandedView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () => {
                  showMySnackBar(context: context, message: "Hello World 1"),
                },
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  // height: 200,
                  width: double.infinity,
                  child: Text("Container 1"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              // fit: FlexFit.tight, // if flexible is used for  Expanded
              child: GestureDetector(
                onDoubleTap: () => {
                  showMySnackBar(
                    context: context,
                    message: "Hello World 2",
                    color: Colors.red,
                  ),
                },

                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  // height: 300,
                  width: double.infinity,
                  child: Text("Container 2"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}