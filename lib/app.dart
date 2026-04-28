import 'package:flutter/material.dart';
import 'package:widgets/views/number_generator_view.dart';
// import 'package:widgets/views/rich_text_view.dart';
// import 'package:widgets/views/text_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:NumberGeneratorView(),
    );
  }
}