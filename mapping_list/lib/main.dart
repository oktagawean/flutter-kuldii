import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Map> myList = [
    {
      'Name': 'Okta',
      'Age': 23,
      'favColor': ['Black', 'Red', 'Amber']
    },
    {
      'Name': 'Dhirga',
      'Age': 33,
      'favColor': ['Green', 'Blue', 'Amber']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mapping List'),
        ),
        body: ListView(
            children: myList.map((data) {
          List myFavColor = data['favColor'];
          return Card(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    Column(
                      children: [
                        Text("Name : ${data['Name']}"),
                        Text("Age : ${data['Age']}")
                      ],
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: myFavColor.map((color) {
                      return Container(
                        color: Colors.blue,
                        child: Text(color),
                      );
                    }).toList())
              ],
            ),
          );
        }).toList()),
      ),
    );
  }
}
