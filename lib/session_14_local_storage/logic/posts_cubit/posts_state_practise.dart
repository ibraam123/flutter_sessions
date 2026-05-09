part of 'posts_cubit_practise.dart';

abstract class PostsStatePractise {}

class PostsInitial extends PostsStatePractise {}

class PostsLoading extends PostsStatePractise {}

class PostsLoaded extends PostsStatePractise {
  final List<PostModelPractise> posts;
  PostsLoaded(this.posts);
}

class PostsError extends PostsStatePractise {
  final String message;
  PostsError(this.message);
}
