import 'package:flutter/material.dart';
import 'package:routes/photo_page.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  static const String routeName = '/gallery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ini Gallery Page',
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('<< Back')),
            TextButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(PhotoPage.routeName),
                child: Text('Next >>'))
          ],
        ),
      ),
    );
  }
}
