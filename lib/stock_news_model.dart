class StockNewsModel {
  String date;
  String title;

  StockNewsModel({required this.date, required this.title});

  factory StockNewsModel.fromJSON(dynamic json) {
    return StockNewsModel(
      date: "${json['date']}",
      title: "${json['title']}",
    );
  }

  Map toJson() => {
        "date": date,
        "title": title,
      };
}
