import 'package:bloc_yutube_shearch/features/yutube_search/domain/entities/video.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/domain/repositories/search_repository.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/domain/usecases/search_usercase.dart';
import 'package:flutter/foundation.dart';

class SearchImpl implements ISearch {
  final ISearchRepository repository;
  SearchImpl({@required this.repository});
  @override
  Future<List<VideoEntity>> call(String search) async {
    return await repository.search(search);
  }
}
