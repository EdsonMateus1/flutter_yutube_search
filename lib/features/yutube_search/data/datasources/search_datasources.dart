import 'package:bloc_yutube_shearch/features/yutube_search/data/models/video_model.dart';

abstract class ISearchDataSource {
  Future<List<VideoModal>> search(String search);
}
