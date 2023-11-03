import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:toktik/presentation/widgets/video_player/video_buttons.dart';

import '../../../domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];

        return Stack(
          children: [
            Positioned(
                bottom: 40,
                right: 20,
                child: VideoButtons(videoPost: videoPost))
          ],
        );
      },
    );
  }
}
