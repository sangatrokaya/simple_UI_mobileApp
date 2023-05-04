// import 'dart:ffi';

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// const String url_sharesansar = "https://www.sharesansar.com/";
// const String url_meroshare = "https://meroshare.cdsc.com.np/#/login";
// const String url_nepalipaisa = "https://www.nepalipaisa.com/";
// const String url_merolagani = "https://merolagani.com/";

// ignore: camel_case_types
class hyper_links extends StatelessWidget {
  const hyper_links({Key? key}) : super(key: key);

  // const hyper_links({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Hyperlinks'),
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 14),
                          width: MediaQuery.of(context).size.width * 0.62,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'Share Sansar',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Divider(),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: FaIcon(FontAwesomeIcons.link),
                                    onPressed: () async {
                                      final url =
                                          'https://www.sharesansar.com/';

                                      if (await canLaunch(url)) {
                                        await launch(
                                          url,
                                          forceSafariVC: false,
                                        );
                                      }
                                    },
                                    splashColor: Colors.green[100],
                                    // launch("mailto:${this.link}");
                                  ),
                                  Text(
                                    'Tap to visit Share Sansar',
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 80,
                          margin: EdgeInsets.only(right: 10, left: 20),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset.fromDirection(90, 3),
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image.asset('img/sharesansar.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 170,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 14),
                              width: MediaQuery.of(context).size.width * 0.62,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Center(
                                    child: Text(
                                      'Mero Share',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Divider(),
                                  Row(
                                    children: <Widget>[
                                      IconButton(
                                        icon: FaIcon(FontAwesomeIcons.link),
                                        onPressed: () async {
                                          final url =
                                              'https://meroshare.cdsc.com.np/#/login';

                                          if (await canLaunch(url)) {
                                            await launch(
                                              url,
                                              forceSafariVC: false,
                                            );
                                          }
                                        },
                                        splashColor: Colors.green[100],
                                        // launch("mailto:${this.link}");
                                      ),
                                      Text(
                                        'Tap to visit Mero Share',
                                        maxLines: 2,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 80,
                              margin: EdgeInsets.only(right: 10, left: 20),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset.fromDirection(90, 3),
                                    blurRadius: 10.0,
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25.0),
                                child: Image.asset('img/meroshare.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 170,
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 14),
                                  width:
                                      MediaQuery.of(context).size.width * 0.62,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          'NepaliPaisa',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Divider(),
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: FaIcon(FontAwesomeIcons.link),
                                            onPressed: () async {
                                              final url =
                                                  'https://www.nepalipaisa.com/';

                                              if (await canLaunch(url)) {
                                                await launch(
                                                  url,
                                                  forceSafariVC: false,
                                                );
                                              }
                                            },
                                            splashColor: Colors.green[100],
                                            // launch("mailto:${this.link}");
                                          ),
                                          Text(
                                            'Tap to visit NepaliPaisa',
                                            maxLines: 2,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  margin: EdgeInsets.only(right: 10, left: 20),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white,
                                        offset: Offset.fromDirection(90, 3),
                                        blurRadius: 10.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25.0),
                                    child: Image.asset('img/nepalipaisa.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 14),
                                      width: MediaQuery.of(context).size.width *
                                          0.62,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Center(
                                            child: Text(
                                              'Merolagani',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          Divider(),
                                          Row(
                                            children: <Widget>[
                                              IconButton(
                                                icon: FaIcon(
                                                    FontAwesomeIcons.link),
                                                onPressed: () async {
                                                  final url =
                                                      'https://merolagani.com/';

                                                  if (await canLaunch(url)) {
                                                    await launch(
                                                      url,
                                                      forceSafariVC: false,
                                                    );
                                                  }
                                                },
                                                splashColor: Colors.green[100],
                                                // launch("mailto:${this.link}");
                                              ),
                                              Text(
                                                'Tap to visit Merolagani',
                                                maxLines: 2,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 80,
                                      margin:
                                          EdgeInsets.only(right: 10, left: 20),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.white,
                                            offset: Offset.fromDirection(90, 3),
                                            blurRadius: 10.0,
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        child:
                                            Image.asset('img/merolagani.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.green[100],
    );
  }
}



// @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }
//   @override
//   _ContactState createState() => _ContactState();
// }

// class _ContactState extends State<hyper_links> {
//   // FSBStatus drawerStatus;
//   late Future<Void> _launch;

// Future<void> _launchInBrowser(String url) async {
//   if (await canLaunch(url)) {
//     await launch(
//       url,
//       forceSafariVC: false,
//       forceWebView: false,
//     );
//   } else {
//     throw 'Could not launch $url';
//   }
// }
// class OpenUrlDemo extends StatelessWidget {
  // String? get url => null;

  // const OpenUrlDemo({ Key? key }) : super(key: key);
  
  // }

//   @override
//   Widget build(BuildContext context) {
//     // Widget build(BuildContext context) {
    
//             // ignore: prefer_const_literals_to_create_immutables
//             children: <Widget>[
//               const DeveloperCard(
//                 name: "Share Sansar",
//                 // college: "KCE074BCT014",
//                 link: "Tap to visit Share Sansar",
//                 image: "img/sharesansar.png",
//                 crn: '',
//               ),
//               const DeveloperCard(
//                 name: "Mero Share",
//                 // college: "KCE074BCT039",
//                 link: "Tap to visit Mero Share",
//                 image: "img/meroshare.png",
//                 crn: '',
//               ),
//               const DeveloperCard(
//                 name: "NepaliPaisa",
//                 // college: "KCE074BCT042",
//                 link: "Tap to visit NepaliPaisa",
//                 image: "img/nepalipaisa.png",
//                 crn: '',
//               ),
//               const DeveloperCard(
//                 name: "Merolagani",
//                 // college: "KCE074BCT043",
//                 link: "Tap to visit Merolagani",
//                 image: "img/merolagani.png",
//                 crn: '',
//               ),
//             ],
//           ),
//         ),
//       ),
//       backgroundColor: Colors.green[100],
//     );
//   }
// }

// // ignore: must_be_immutable
// // class DeveloperCard extends StatelessWidget {
// //   const DeveloperCard(
// //       {Key? key,
// //       required this.name,
// //       // required this.college,
// //       required this.link,
// //       required this.image,
// //       required this.crn})
// //       : super(key: key);
// //   final String name;
// //   final String crn;
// //   final String image;
// //   // final String college;
// //   final String link;

// class _launchURLBrowser {}
