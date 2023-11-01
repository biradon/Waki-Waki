import 'package:flutter/material.dart';
import '/widgets/AppTitle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: AppTitle(),
          ),
        ),
      ),
    );
  }
}
