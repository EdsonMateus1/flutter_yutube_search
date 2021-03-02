import 'dart:convert';

import 'package:bloc_yutube_shearch/features/yutube_search/data/datasources/search_datasources.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/data/models/video_model.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/external/api/api.dart';
import 'package:http/http.dart' as http;

class SearchDataSourceImpl implements ISearchDataSource {
  @override
  Future<List<VideoModal>> search(String search) async {
    final String url =
        "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$search&type=video&key=${Api.API_KEY}&maxResults=10";
    final res = await http.get(url);
    if (res.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(res.body);
      List<VideoModal> videos =
          data["items"].map((map) => VideoModal.fromMap(map)).toList();
      return videos;
    }
  }
}
