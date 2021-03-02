import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:bloc_yutube_shearch/features/yutube_search/domain/entities/video.dart';

class VideoModal extends Video {
  final String id;
  final String title;
  final String thumb;
  final String channel;

  VideoModal({
    @required this.id,
    @required this.title,
    @required this.thumb,
    @required this.channel,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'thumb': thumb,
      'channel': channel,
    };
  }

  factory VideoModal.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return VideoModal(
      id: map['id']['videoId'],
      title: map['snippet']['title'],
      thumb: map['snippet']['high']['url'],
      channel: map['snippet']['channelTitle'],
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoModal.fromJson(String source) =>
      VideoModal.fromMap(json.decode(source));
}
