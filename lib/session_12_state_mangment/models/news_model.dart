class NewsModel {
  final int id;
  final String title;
  final String description;
  final String? image;


  NewsModel({
    required this.id,
    required this.title,
    required this.description,
      this.image,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      image: json['urlToImage'],
    );
  }
}
