import 'package:flutter/material.dart';
import 'package:navigation/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Center(
        child: Text(
          'Ini Page 1',
          style: TextStyle(fontSize: 36),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return PageTwo();
            },
          ));
        },
        child: Icon(Icons.arrow_circle_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
