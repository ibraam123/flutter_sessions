import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/post_model_practise.dart';
import '../../services/api_service_practise.dart';

part 'posts_state_practise.dart';

class PostsCubitPractise extends Cubit<PostsStatePractise> {
  final ApiServicePractise apiService;

  PostsCubitPractise(this.apiService) : super(PostsInitial());

  Future<void> fetchPosts() async {
    emit(PostsLoading());
    try {
      final posts = await apiService.fetchPosts();
      emit(PostsLoaded(posts));
    } catch (e) {
      emit(PostsError(e.toString()));
    }
  }



}
