// import 'dart:html';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/services.dart';
import 'package:nemp/about_us.dart';
import 'package:nemp/dashboard.dart';
import 'package:nemp/predictor.dart';
import 'contact_us.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.green[900],
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.search),
        //   )
        // ],
        // centerTitle: true,
      ),
      backgroundColor: Colors.green[100],
      body: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 250.0,
                width: double.infinity,
                child: Carousel(
                  dotSize: 6.0,
                  dotSpacing: 15.0,
                  dotPosition: DotPosition.bottomCenter,
                  images: [
                    Image.asset('img/slide1.jpg', fit: BoxFit.cover),
                    Image.asset('img/slide2.jpg', fit: BoxFit.cover),
                    Image.asset('img/slide3.jpg', fit: BoxFit.cover),
                    Image.asset('img/slide4.jpg', fit: BoxFit.cover),
                    Image.asset('img/slide5.jpg', fit: BoxFit.cover),
                    Image.asset('img/slide6.jpg', fit: BoxFit.cover),
                    Image.asset('img/slide7.jpg', fit: BoxFit.cover),
                  ],
                ),
                // Padding(
                //       padding: EdgeInsets.all(4),
                //       child: Text('Let NEMP be your financial advisor',
                //           style:
                //               TextStyle(color: Colors.green, fontSize: 25.0)),
                //     ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/background.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.darken,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green[100],
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          // CircleAvatar(
          //   radius: 60.0,
          //   backgroundColor: const Color(0xFF778899),
          //   child: new Image.asset(
          //     'img/profile.png',
          //   ),
          // ),
          DrawerHeader(
              //const DrawerHeader(
              margin: EdgeInsets.only(bottom: 9),
              decoration: BoxDecoration(
                  // color: Colors.green,
                  gradient: LinearGradient(colors: <Color>[
                Color.fromARGB(255, 1, 71, 4),
                Color.fromARGB(255, 151, 226, 65),
              ])),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(500.0)),
                      elevation: 10,
                      // child: Padding(padding: EdgeInsets.all(8.0)),
                      child: Image.asset(
                        'img/profile.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text('NEMP',
                          style: TextStyle(
                              color: Colors.green[100], fontSize: 25.0)),
                    )
                  ],
                ),
              )),
          // ListTile(
          //   title: Text('Home'),
          //   leading: Icon(Icons.home),
          //   onTap: () {
          //     print("Home Pressed");
          //   },
          // ),

          ListTile(
            title: Text('Dashboard', style: TextStyle(fontSize: 16.0)),
            leading: const Icon(Icons.dashboard),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new dashboardpage()));
            },
          ),
          ListTile(
            title: Text('Predictor', style: TextStyle(fontSize: 16.0)),
            leading: Icon(Icons.search),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new predictorpage()));
            },
          ),
          ListTile(
            title: Text('Contact Us', style: TextStyle(fontSize: 16.0)),
            leading: Icon(Icons.email),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new contact_us_page()));
            },
          ),
          ListTile(
            title: Text('About Developers', style: TextStyle(fontSize: 16.0)),
            leading: Icon(Icons.code),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new AboutDeveloper()));
            },
          ),
          ListTile(
            title: Text('Exit', style: TextStyle(fontSize: 16.0)),
            leading: Icon(Icons.exit_to_app_outlined),
            onTap: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else {
                exit(0);
              }
              // Navigator.pop(context);
              // Navigator.push(
              //     context,
              //     new MaterialPageRoute(
              //         builder: (context) => new settingspage()));
            },
          )
        ]),
      ),
    );
  }
}
