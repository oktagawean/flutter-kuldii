import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});
  static const String routeName = '/photo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo'),
      ),
      body: Center(
        child: Text(
          'Ini Photo Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
