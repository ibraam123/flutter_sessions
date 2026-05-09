import 'package:hive_flutter/hive_flutter.dart';
import '../models/post_model.dart';

class HiveService {
  static const String boxName = 'saved_posts_box';

  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(PostModelAdapter());
    await Hive.openBox<PostModel>(boxName);
  }

  final Box<PostModel> _box = Hive.box<PostModel>(boxName);

  List<PostModel> getSavedPosts() {
    return _box.values.toList();
  }

  Future<void> savePost(PostModel post) async {
    await _box.put(post.id, post);
  }

  Future<void> deletePost(int postId) async {
    await _box.delete(postId);
  }
}
