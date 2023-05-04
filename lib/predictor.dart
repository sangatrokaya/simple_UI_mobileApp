import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'package:csv/csv.dart';
import 'dart:math';

class predictorpage extends StatefulWidget {
  const predictorpage({Key? key}) : super(key: key);

  @override
  State<predictorpage> createState() => _predictorpageState();
}

class _predictorpageState extends State<predictorpage> {
  loadModel() async {
    await Tflite.loadModel(
      model: "assets/deployment_model.tflite",
    );
  }

  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
    var rng = Random();
    var x = List.generate(
      1,
      (index) => List.generate(
        12,
        (i) => List.generate(
          8,
          (j) => rng.nextDouble(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Predictor'),
        backgroundColor: Colors.green[900],
        // centerTitle: true,
      ),
      body: Center(
        child: Text(
          'This page is under development!!!',
          // textAlign: TextAlign.center,
          // overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      backgroundColor: Colors.green[100],
    );
  }
}
