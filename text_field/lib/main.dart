import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String v = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
        ),
        body: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onSubmitted: (value) {
                setState(() {
                  v = value;
                });
              },
            ),
            Text(v)
          ],
        ),
      ),
    );
  }
}
