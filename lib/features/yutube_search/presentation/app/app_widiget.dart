import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidiget extends StatelessWidget {
  const AppWidiget();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "yutube search",
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: "/",
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
