import 'package:flutter/widgets.dart';

class Video {
  final String id;
  final String title;
  final String thumb;
  final String channel;

  Video({
    @required this.id,
    @required this.title,
    @required this.thumb,
    @required this.channel,
  });
}
