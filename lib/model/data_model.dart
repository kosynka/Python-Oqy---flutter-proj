class DataModel {
  String name;
  String statusBarImg;
  String text;
  int stars;
  List imgs;
  DataModel({
    required this.name,
    required this.statusBarImg,
    required this.text,
    required this.stars,
    required this.imgs,
  });
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      name: json['name'],
      statusBarImg: json['statusBarImg'],
      text: json['text'],
      stars: json['stars'],
      imgs: json['imgs'],
    );
  }
}
