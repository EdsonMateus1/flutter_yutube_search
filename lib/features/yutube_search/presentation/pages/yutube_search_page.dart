import 'package:bloc_yutube_shearch/features/yutube_search/presentation/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class YutubeSearchPage extends StatefulWidget {
  @override
  _YutubeSearchPageState createState() => _YutubeSearchPageState();
}

class _YutubeSearchPageState
    extends ModularState<YutubeSearchPage, SearchBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('titulo'),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "digite"),
              ),
            ],
          ),
        );
      }),
    );
  }
}
