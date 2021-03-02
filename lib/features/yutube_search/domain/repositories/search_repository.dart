import 'package:bloc_yutube_shearch/features/yutube_search/domain/entities/video.dart';

abstract class ISearchRepository {
  Future<List<Video>> search(String search);
}
