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

class SuccessSearchState implements SearchState {
  final List<VideoEntity> video;
  const SuccessSearchState(this.video);
}
