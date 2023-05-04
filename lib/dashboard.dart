import 'package:flutter/material.dart';
import 'package:nemp/calculator.dart';
import 'package:nemp/group_chat.dart';
import 'package:nemp/hyperlinks.dart';
import 'package:nemp/my_notes.dart';
import 'package:nemp/news.dart';

class dashboardpage extends StatelessWidget {
  const dashboardpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.green[900],
        // centerTitle: true,
      ),
      backgroundColor: Colors.green[100],
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new my_notes()));
                },
                splashColor: Colors.green[100],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.note_alt_outlined,
                        size: 70.0,
                        color: Colors.green[800],
                      ),
                      Text(
                        'My Notes',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  // Navigator.pop(context);
                  // Navigator.push(context,
                  //     new MaterialPageRoute(builder: (context) => new news()));
                },
                splashColor: Colors.green[100],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.book,
                        size: 70.0,
                        color: Colors.green[800],
                      ),
                      Text(
                        'News',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new calculator()));
                },
                splashColor: Colors.green[100],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.calculate,
                        size: 70.0,
                        color: Colors.green[800],
                      ),
                      Text(
                        'Calculator',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new group_chat()));
                },
                splashColor: Colors.green[100],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.groups,
                        size: 70.0,
                        color: Colors.green[800],
                      ),
                      Text(
                        'Group Chat',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new hyper_links()));
                },
                splashColor: Colors.green[100],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.share,
                        size: 70.0,
                        color: Colors.green[800],
                      ),
                      Text(
                        'Hyperlinks',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // MyMenu(
            //     title: 'My Notes',
            //     icon: Icons.note_alt_outlined,
            //     warna: Colors.green),
            // MyMenu(title: 'News', icon: Icons.book, warna: Colors.green),
            // MyMenu(
            //     title: 'Calculator',
            //     icon: Icons.calculate,
            //     warna: Colors.green),
            // MyMenu(
            //     title: 'Group Chat', icon: Icons.groups, warna: Colors.green),
            // MyMenu(title: 'Hyperlinks', icon: Icons.share, warna: Colors.green),
          ],
        ),
      ),
    );
  }
}

// class MyMenu extends StatelessWidget {
//   // const MyMenu({Key? key}) : super(key: key);
//   MyMenu({required this.title, required this.icon, required this.warna});

//   final String title;
//   final IconData icon;
//   final MaterialColor warna;

//   @override
//   Widget build(BuildContext context) {
    // return Card(
    //   margin: EdgeInsets.all(8.0),
    //   child: InkWell(
    //     onTap: () {},
    //     splashColor: Colors.green[100],
    //     child: Center(
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: <Widget>[
    //           Icon(
    //             icon,
    //             size: 70.0,
    //             color: warna,
    //           ),
    //           Text(
    //             title,
    //             style: TextStyle(fontSize: 17.0),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
//   }
// }
