import 'package:bloc_yutube_shearch/core/usercase_core/search_usercase_impl.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/data/datasources/search_datasources.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/data/repositories/search_repository_impl.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/domain/repositories/search_repository.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/domain/usecases/search_usercase.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/external/search_datasource_impl.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/presentation/app/app_widiget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind<ISearch>((i) => SearchImpl(repository: i<ISearchRepository>())),
        Bind<ISearchRepository>(
            (i) => SearchRepositoryImpl(datasource: i<ISearchDataSource>())),
        Bind<ISearchDataSource>((i) => SearchDataSourceImpl())
      ];

  @override
  Widget get bootstrap => AppWidiget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (context, args) => Text("teste"),
        )
      ];
}
