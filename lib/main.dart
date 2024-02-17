import 'package:flutter/material.dart';
import 'package:interactive_rating_component/main_content.dart';

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainContent(),
    );
  }
}
