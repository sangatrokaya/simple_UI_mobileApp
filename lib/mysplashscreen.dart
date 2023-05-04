import 'package:flutter/material.dart';
import 'package:nemp/homepage.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatefulWidget {
  //const MySplashScreen({ Key? key }) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new HomePage(),
      title: new Text('Welcome to NEMP'),
      image: new Image.asset('img/profile.png'),
      backgroundColor: Colors.green[100],
      styleTextUnderTheLoader: new TextStyle(fontSize: 30),
      photoSize: 100.0,
      loaderColor: Colors.red,
      loadingText: Text("Loading"),
    );
  }
}
