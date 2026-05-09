import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/post_model.dart';
import '../../services/hive_service.dart';

part 'saved_posts_state.dart';

class SavedPostsCubit extends Cubit<SavedPostsState> {
  final HiveService hiveService;

  SavedPostsCubit(this.hiveService) : super(SavedPostsInitial());

  void loadSavedPosts() {
    try {
      final posts = hiveService.getSavedPosts();
      emit(SavedPostsLoaded(posts));
    } catch (e) {
      emit(SavedPostsError(e.toString()));
    }
  }

  Future<void> savePost(PostModel post) async {
    try {
      await hiveService.savePost(post);
      loadSavedPosts();
    } catch (e) {
      emit(SavedPostsError(e.toString()));
    }
  }

  Future<void> deletePost(int id) async {
    try {
      await hiveService.deletePost(id);
      loadSavedPosts();
    } catch (e) {
      emit(SavedPostsError(e.toString()));
    }
  }
}
