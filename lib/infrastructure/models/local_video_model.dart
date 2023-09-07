import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel(
      {required this.name,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0});

  factory LocalVideoModel.fromMap(Map<String, dynamic> json) => LocalVideoModel(
    name: json["name"] ?? 'No name',
    videoUrl: json["videoUrl"],
    likes: json["likes"],
    views: json["views"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "videoUrl": videoUrl,
    "likes": likes,
    "views": views,
  };

  VideoPost toVideoPost() => VideoPost(name: name, videoUrl: videoUrl);

}


