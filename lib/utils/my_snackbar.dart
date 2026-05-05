
import 'package:flutter/material.dart';

void showMySnackBar({
  required BuildContext context,
  required String message,
  Color color = Colors.green
})
{
  ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(
    content: Text("Message"),
    backgroundColor: color,
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 2),
    ),
  );
}