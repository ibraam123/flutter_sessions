

import 'package:dio/dio.dart';

import '../models/post_model_practise.dart';

class ApiServicePractise {
  final Dio dio = Dio();
  final String baseUrl = 'https://dummyjson.com';
  final String endpoint = '/posts';

  Future<List<PostModelPractise>> fetchPosts() async {
    try {
      final Response response = await dio.get('$baseUrl$endpoint');

      Map<String,dynamic> postsJson = response.data;

      List<dynamic> data = postsJson['posts'];

      List<PostModelPractise> posts = [];

      for(int i = 0; i < data.length; i++) {
        posts.add(PostModelPractise.fromJson(data[i]));
      }

      return posts;
    } catch (e) {
      throw Exception('Failed to load posts from API: $e');
    }
  }

}