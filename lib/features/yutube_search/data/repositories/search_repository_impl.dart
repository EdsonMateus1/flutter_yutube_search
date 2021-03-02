import 'package:bloc_yutube_shearch/features/yutube_search/data/datasources/search_datasources.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/domain/entities/video.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/domain/repositories/search_repository.dart';
import 'package:flutter/widgets.dart';

class SearchRepositoryImpl implements ISearchRepository {
  final ISearchDataSource datasource;
  SearchRepositoryImpl({@required this.datasource});
  @override
  Future<List<Video>> search(String search) async {
    return await datasource.search(search);
  }
}
