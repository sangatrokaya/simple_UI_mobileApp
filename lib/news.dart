// import 'package:flutter/material.dart';
// import 'package:sheet_loader_localization/sheet_builder.dart';
// import 'stock_news_model.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

// class news extends StatefulWidget {
//   @override
//   _NewsState createState() => _NewsState();
// }

// class _NewsState extends State<news> {
//   // ignore: deprecated_member_use
//   List<StockNewsModel> news = <StockNewsModel>[];

//   getStockNewsFromSheet() async {
//     var url = Uri.parse(
//         "https://script.google.com/macros/s/AKfycby9dtRuM2GaVBLqUutwY2YADZwlP2et--v6gy2pesKYYbEZcB_EOCLe92v8zXd-oKUD1g/exec");

//     var jsonStockNews = convert.jsonDecode(url.path);
//     print('this is json StockNews $jsonStockNews');

//     // feedbacks = jsonFeedback.map((json) => FeedbackModel.fromJson(json));

//     jsonStockNews.forEach((element) {
//       print('$element THIS IS NEXT>>>>>>>');
//       StockNewsModel stocknewsModel = new StockNewsModel();
//       stocknewsModel.date = element['date'];
//       stocknewsModel.title = element['title'];
//       stocknewsModel.sentiment = element['sentiment'];

//       news.add(stocknewsModel);
//     });

//     //print('${feedbacks[0]}');
//   }

//   @override
//   void initState() {
//     getStockNewsFromSheet();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("News"),
//         elevation: 0,
//       ),
//       body: Container(
//         child: ListView.builder(
//             itemCount: news.length,
//             itemBuilder: (context, index) {
//               return StockNewsTile(
//                 date: news[index].date,
//                 title: news[index].title,
//                 sentiment: news[index].sentiment,
//               );
//             }),
//       ),
//     );
//   }
// }

// class StockNewsModel {
//   get date => null;

//   get title => null;

//   get sentiment => null;

//   set title(title) {}

//   set date(date) {}

//   set sentiment(sentiment) {}
// }

// class StockNewsTile extends StatelessWidget {
//   final String date, title, sentiment;
//   StockNewsTile(
//       {required this.date, required this.title, required this.sentiment});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               SizedBox(width: 16),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(date, style: TextStyle(color: Colors.brown)),
//                   Text(
//                     title,
//                     style: TextStyle(color: Colors.black),
//                   ),
//                   Text(sentiment, style: TextStyle(color: Colors.black12)),
//                 ],
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
