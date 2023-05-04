import 'package:flutter/material.dart';

class my_notes extends StatelessWidget {
  // const my_notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('My Notes'),
        backgroundColor: Colors.green[900],
        // centerTitle: true,
      ),
      body: Text('Work on progress !!!'),
    );
  }
}
