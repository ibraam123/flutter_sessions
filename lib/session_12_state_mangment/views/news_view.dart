import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/session_12_state_mangment/logic/cubits/news/news_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  final List<String> categories = [
    'general',
    'business',
    'entertainment',
    'health',
    'science',
    'sports',
    'technology',
  ];

  String selectedCategory = 'general';

  void changeCategory(String category){

    setState(() {
      selectedCategory = category;
    });

    context.read<NewsCubit>().getNews(category);
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(centerTitle: true, title: const Text('News Cubit')),

          body: Column(
            children: [

              /// 🔹 Categories List
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];

                    return GestureDetector(
                      onTap: (){
                        changeCategory(category);
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 10,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: selectedCategory == category
                              ? Colors.orange
                              : Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            category,
                            style: TextStyle(
                              color: selectedCategory == category
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 10),

              /// 🔹 News List
              Expanded(
                child: Text(
                  'News List will be displayed here based on the selected category.',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}


/*
    void changeCategory(BuildContext context, String category) {
      setState(() {
        selectedCategory = category;
      });

      context.read<NewsCubit>().getNews(category: category);
    }
    child: BlocBuilder<NewsCubit, NewsState>(
    builder: (context, state) {
    if (state is NewsLoading) {
    return const Center(child: CircularProgressIndicator());
    } else if (state is NewsError) {
    return Center(
    child: Text(
    state.message,
    style: const TextStyle(color: Colors.red),
    ),
    );
    } else if (state is NewsSuccess) {
    return ListView.builder(
    itemCount: state.news.length,
    itemBuilder: (context, index) {
    return Padding(
    padding: const EdgeInsets.all(8.0),
    child: NewsTileStateMangment(
    newsModel: state.news[index],
    ),
    );
    },
    );
    }

    return const Center(
    child: Text('Select a category to load news'),
    );
    },
    ),
*/