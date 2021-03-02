import 'package:bloc_yutube_shearch/features/yutube_search/domain/entities/video.dart';

abstract class ISearch {
  Future<List<Video>> call(String search);
}
