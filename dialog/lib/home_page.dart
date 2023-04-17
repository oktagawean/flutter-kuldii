import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = 'Belum Ada';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: Text(data),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print('On Klik');
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Konfirmasi?'),
                  content: Text('Apakah anda yakin?'),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          print('Klik Ya');
                          setState(() {
                            data = 'Ya';
                          });
                          Navigator.of(context).pop(true);
                        },
                        child: Text('Ya')),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            data = 'Tidak';
                          });
                          Navigator.of(context).pop(false);
                        },
                        child: Text('Tidak'))
                  ],
                );
              }).then((value) => print(value));
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
