import '../../../models/news_model.dart';

abstract class NewsState {

}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}

class NewsSuccess extends NewsState {
  final List<NewsModel> news;
  NewsSuccess({required this.news});
}

class NewsError extends NewsState {
  final String message;
  NewsError({required this.message});
}
