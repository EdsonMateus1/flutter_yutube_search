import 'package:bloc_yutube_shearch/features/yutube_search/domain/entities/video.dart';

abstract class SearchState {}

class StartSearchState implements SearchState {
  const StartSearchState();
}

class LoadingSearchState implements SearchState {
  const LoadingSearchState();
}

class ErrorSearchState implements SearchState {
  final error;
  const ErrorSearchState(this.error);
}

class SuccssSearchState implements SearchState {
  final List<Video> video;
  const SuccssSearchState(this.video);
}
