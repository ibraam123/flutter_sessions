import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_7_flutter_hult/session_14_local_storage/views/post_details_screen_practise.dart';
import '../logic/posts_cubit/posts_cubit_practise.dart';
import '../widgets/post_card_practise.dart';

class HomePostsScreenPractise extends StatefulWidget {
  const HomePostsScreenPractise({super.key});

  @override
  State<HomePostsScreenPractise> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePostsScreenPractise> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        title: const Text(
          'API Posts',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF2C3E50),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: BlocBuilder<PostsCubitPractise, PostsStatePractise>(
        builder: (context, state) {
          if (state is PostsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostsError) {
            return Center(child: Text(state.message));
          } else if (state is PostsLoaded) {
            final posts = state.posts;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return PostCardPractise(
                  post: post,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostDetailsScreenPractise(post: post),
                      ),
                    );
                  },
                  onSave: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Post saved locally!')),
                    );
                  },
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
