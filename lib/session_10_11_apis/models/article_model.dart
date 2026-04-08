class ArticleModel {
  final String? title;
  final String? description;
  final String? image;

  ArticleModel({
    this.title,
    this.description,
    this.image,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      title: json['title'],
      description: json['description'],
      image: json['urlToImage'],
    );
  }
}