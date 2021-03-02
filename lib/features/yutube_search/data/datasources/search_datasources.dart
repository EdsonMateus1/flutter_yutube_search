import 'package:bloc_yutube_shearch/features/yutube_search/domain/entities/video.dart';

abstract class ISearchDataSource {
  Future<List<Video>> search(String search);
}
