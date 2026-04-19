import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_7_flutter_hult/session_12_state_mangment/models/news_model.dart';
import '../../../services/news_service_state_mangment.dart';
import 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final NewsServiceStateManagement _newsService;

  NewsCubit(this._newsService) : super(NewsInitial());

  // Fetch news using the service and emit states
  Future<void> getNews(
    {String category = 'general'}
      ) async {
    emit(NewsLoading());
    try {
      final List<NewsModel> newsList = await _newsService.getTopHeadlines(category: category);
      emit(NewsSuccess(news: newsList));
    } catch (e) {
      emit(NewsError(message: 'Failed to fetch news: $e'));
    }
  }
}
