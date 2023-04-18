import 'package:flutter/material.dart';
import 'package:routes/gallery_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String routeName = '/homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: Text(
          'Ini Homepage',
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed(GalleryPage.routeName),
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
