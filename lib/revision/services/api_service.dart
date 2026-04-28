

import 'package:dio/dio.dart';
import 'package:session_7_flutter_hult/revision/models/post_model.dart';

class ApiService {
  final Dio dio = Dio();
  final String baseUrl = 'https://dummyjson.com';
  final String endpoint = '/posts';

  Future<List<PostModel>> fetchPosts() async {
    try {
      final Response response = await dio.get('$baseUrl$endpoint');

      Map<String,dynamic> postsJson = response.data;

      List<dynamic> data = postsJson['posts'];

      List<PostModel> posts = [];

      for(int i = 0; i < data.length; i++) {
        posts.add(PostModel.fromJson(data[i]));
      }

      return posts;
    } catch (e) {
      throw Exception('Failed to load posts from API: $e');
    }
  }


  Future<PostModel> fetchPostById(int id) async {
    try {
      final Response response = await dio.get('$baseUrl$endpoint/$id');
      return PostModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load post: $e');
    }
  }


  // use post method to create a new post
  Future<PostModel> createPost(PostModel post) async {
    try {
      final Response response = await dio.post(
        '$baseUrl$endpoint',
        data: post.toJson(),
      );
      return PostModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to create post');
    }
  }

  // use put method to update an existing post
  Future<void> updatePost(PostModel post) async {
    try {
      await dio.put(
        '$baseUrl$endpoint/${post.id}',
        data: post.toJson(),
      );
    } catch (e) {
      throw Exception('Failed to update post');
    }
  }

  // use delete method to delete a post
  Future<void> deletePost(int id) async {
    try {
      await dio.delete('$baseUrl$endpoint/$id');
    } catch (e) {
      throw Exception('Failed to delete post');
    }
  }
}