import 'package:dio/dio.dart';
import 'package:session_7_flutter_hult/session_12_state_mangment/models/news_model.dart';


class NewsServiceStateManagement {
  final Dio dio = Dio();

  Future<List<NewsModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=0d3827c047ad4a99a4e65a2f429c1564&category=$category',
      );

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<NewsModel> articlesList = [];

      for (var article in articles) {
        articlesList.add(NewsModel.fromJson(article));
      }

      return articlesList;
    } catch (e) {
      throw Exception('Failed to fetch news: $e');
    }
  }

}
