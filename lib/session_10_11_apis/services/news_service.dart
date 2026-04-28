import '../models/article_model.dart';
import 'package:dio/dio.dart';


class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=0d3827c047ad4a99a4e65a2f429c1564&category=$category',
      );
      print("response status code: ${response.statusCode}");
      print(
        "response data: ${response.data}",
      );

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        articlesList.add(ArticleModel.fromJson(article));
      }

      return articlesList;
    } catch (e) {
      print(
        "error: $e",
      );
      return [];
    }
  }
}
