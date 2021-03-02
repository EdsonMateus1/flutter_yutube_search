import 'package:bloc_yutube_shearch/features/yutube_search/domain/entities/video.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/domain/repositories/search_repository.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/domain/usecases/search_usercase.dart';
import 'package:flutter/cupertino.dart';

class SearchImpl implements ISearch {
  final ISearchRepository repository;
  SearchImpl({@required this.repository});
  @override
  Future<List<Video>> call(String search) async {
    return await repository.search(search);
  }
}
