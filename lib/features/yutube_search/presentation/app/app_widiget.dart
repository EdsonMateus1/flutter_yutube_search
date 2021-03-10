import 'package:bloc_yutube_shearch/features/yutube_search/domain/usecases/search_usercase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidiget extends StatelessWidget {
  final ISearch search = Modular.get<ISearch>();
  AppWidiget();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "yutube search",
      theme: ThemeData(primaryColor: Colors.blue),
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
      initialRoute: "/",
    );
  }
}
