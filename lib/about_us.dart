import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutDeveloper extends StatelessWidget {
  const AboutDeveloper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Developers'),
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const DeveloperCard(
                name: "Bibash Rajthala",
                college: "KCE074BCT014",
                email: "bibashrajthala00@gmail.com",
                image: "img/bibash.jpg",
                crn: '',
              ),
              const DeveloperCard(
                name: "Sangat Rokaya",
                college: "KCE074BCT039",
                email: "rokayasangat123@gmail.com",
                image: "img/sangat.jpg",
                crn: '',
              ),
              const DeveloperCard(
                name: "Subin Timilsina",
                college: "KCE074BCT042",
                email: "subintimilsina1@gmail.com",
                image: "img/subin.jpg",
                crn: '',
              ),
              const DeveloperCard(
                name: "Sujan Acharya",
                college: "KCE074BCT043",
                email: "sujanacharya1996@gmail.com",
                image: "img/sujan.jpg",
                crn: '',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.green[100],
    );
  }
}

// ignore: must_be_immutable
class DeveloperCard extends StatelessWidget {
  const DeveloperCard(
      // {required Key key,
      {Key? key,
      required this.name,
      required this.college,
      required this.email,
      required this.image,
      required this.crn})
      : super(key: key);
  // : super(key: key);
  final String name;
  final String crn;
  final String image;
  final String college;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Center(
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
                          this.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.university),
                              onPressed: () {}),
                          Text(
                            this.college,
                            maxLines: 2,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope),
                              onPressed: () {
                                launch("mailto:${this.email}");
                              }),
                          Text(
                            this.email,
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
                        color: Colors.grey,
                        offset: Offset.fromDirection(90, 3),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset(this.image),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}


// class about_us_page extends StatelessWidget {
//   const about_us_page({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: new Text('About Developer'),
//         backgroundColor: Colors.green[900],
//         centerTitle: true,
//       ),
//       body: Text('Welcome to NEMP About Us !!!'),
//     );
//   }
// }
