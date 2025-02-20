import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Package Example')),
        body: Center(
          child: Container(
            child: Text("HELLO WORLD"),
          ), // Use your package's widget here
        ),
      ),
    );
  }
}
