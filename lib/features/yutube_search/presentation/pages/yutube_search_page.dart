import 'package:bloc_yutube_shearch/features/yutube_search/presentation/bloc/search_bloc.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/presentation/bloc/search_states.dart';
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
                onChanged: (value) => controller.add(value),
                decoration: InputDecoration(labelText: "digite"),
              ),
              Expanded(
                  child: StreamBuilder<SearchState>(
                stream: controller,
                initialData: StartSearchState(),
                builder: (context, snapshot) {
                  var state = controller.state;
                  if (state is ErrorSearchState) {
                    return Text("algo deu errado");
                  } else if (state is StartSearchState) {
                    return Text("digite...");
                  } else if (state is LoadingSearchState) {
                    return CircularProgressIndicator();
                  } else if (state is SuccessSearchState) {
                    return Text("video");
                  } else {
                    return Container();
                  }
                },
              )),
            ],
          ),
        );
      }),
    );
  }
}
