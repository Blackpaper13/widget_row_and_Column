import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello World Row and Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const Text("Text 1"),
            const Text("TExt 2"),
            const Text("Text 3"),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Text(
                  'Text 4',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman'),
                ),
                // ignore: prefer_const_constructors
                Text("Text 5"),
                // ignore: prefer_const_constructors
                Text("Text 6")
              ],
            )
          ],
        ),
      ),
    );
  }
}
