import 'dart:ffi';
// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher_android/url_launcher_android.dart';
import 'package:url_launcher_ios/url_launcher_ios.dart';
import 'dart:async';

class contact_us_page extends StatefulWidget {
  // const contact_us_page({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<contact_us_page> {
  // FSBStatus drawerStatus;
  late Future<Void> _launch;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    const String email = "rokayasangat123@gmail.com";
    const String url_facebook = "https://www.facebook.com/sangatrokaya";
    const String url_github = "https://github.com/sangatrokaya";
    const String url_linkedin =
        "https://www.linkedin.com/in/sangat-rokaya-850181186/";
    const String url_youtube =
        "https://www.youtube.com/channel/UCbZtvhL0dj74SwNtPrg1C7Q";

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 30,
          child: Text('Contact Us'),
          // color: Colors.green[900],
        ),
        backgroundColor: Colors.green[900],
        // centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(
        //     MaterialCommunityIcons.menu,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {
        //     setState(() {});
        //   },
        // ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          child: Card(
            elevation: 20.0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
              child: Column(
                children: <Widget>[
                  Image.asset("img/launcher.png", height: 100.0, width: 100.0),
                  Text(
                    "Nepali Market Predictor- NEMP",
                    style: TextStyle(
                      color: Colors.green[900],
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      decorationColor: Colors.greenAccent,
                    ),
                  ),
                  Text("(This is our final year project of BCT)"),
                  Text("Khwopa College of Engineering, BCT2074"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    thickness: 3.0,
                    color: Colors.green[400],
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text("Libali, Bhaktapur-8, Nepal"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("(+977) 9868644049"),
                    onTap: () {
                      setState(() {
                        // ignore: unused_local_variable
                        Future<void> _launch = _makePhoneCall('tel:9868644049');
                      });
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text(email),
                    onTap: () {
                      setState(() {
                        Future<void> _launch =
                            _launchInBrowser("mailto:$email");
                      });
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.tag),
                    title: Text("Let NEMP be your financial advisor"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue[900],
                        ),
                        onPressed: () {
                          setState(() {
                            Future<void> _launch =
                                _launchInBrowser(url_facebook);
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.github,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            Future<void> _launch = _launchInBrowser(url_github);
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.blue[800],
                        ),
                        onPressed: () {
                          setState(() {
                            Future<void> _launch =
                                _launchInBrowser(url_linkedin);
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red[900],
                        ),
                        onPressed: () {
                          setState(() {
                            Future<void> _launch =
                                _launchInBrowser(url_youtube);
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.green[100],
    );
  }
}
