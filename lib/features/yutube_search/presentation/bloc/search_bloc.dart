import 'package:bloc_yutube_shearch/features/yutube_search/domain/entities/video.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/domain/usecases/search_usercase.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/presentation/bloc/search_states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchBloc extends Bloc<String, SearchState> implements Disposable {
  final ISearch search;

  SearchBloc({@required this.search}) : super(StartSearchState());

  @override
  Stream<SearchState> mapEventToState(String textSearch) async* {
    if (textSearch.isEmpty) {
      yield StartSearchState();
      return;
    }

    yield LoadingSearchState();
    try {
      final List<Video> video = await search(textSearch);
      if (video != null) {
        yield SuccssSearchState(video);
      } else {
        yield ErrorSearchState("erro ao buscar video");
      }
    } catch (e) {
      yield ErrorSearchState("erro interno: $e");
    }
  }

  @override
  void dispose() {
    this.close();
  }
}
