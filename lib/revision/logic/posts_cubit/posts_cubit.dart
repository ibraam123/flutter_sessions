import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/post_model.dart';
import '../../services/api_service.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  final ApiService apiService;

  PostsCubit(this.apiService) : super(PostsInitial());

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
