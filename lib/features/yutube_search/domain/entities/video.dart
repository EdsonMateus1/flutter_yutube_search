import 'package:flutter/widgets.dart';

class VideoEntity {
  final String id;
  final String title;
  final String thumb;
  final String channel;

  VideoEntity({
    @required this.id,
    @required this.title,
    @required this.thumb,
    @required this.channel,
  });
}
