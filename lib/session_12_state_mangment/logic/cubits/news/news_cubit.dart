import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:session_7_flutter_hult/session_12_state_mangment/services/news_service_state_mangment.dart';

import '../../../models/news_model.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  final NewsServiceStateManagement newsServiceStateManagement = NewsServiceStateManagement();


  Future<void> getNews(String category) async {
    emit(NewsLoading());
    try{
      final List<NewsModel> newsList = await newsServiceStateManagement.getTopHeadlines(category: category);
      emit(NewsLoaded(newsList));
    } catch (e) {
      emit(NewsError(e.toString()));
    }
  }

}
