part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {

}

final class NewsLoading extends NewsState {

}

final class NewsLoaded extends NewsState {
  final List<NewsModel> newsList;
  NewsLoaded(this.newsList);
}

final class NewsError extends NewsState {
  final String errorMsg;
  NewsError(this.errorMsg);
}
