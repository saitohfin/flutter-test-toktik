import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost videoPost;

  const VideoButtons({
    super.key, required this.videoPost
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: videoPost.likes, color: Colors.red, iconData: Icons.favorite),
        _CustomIconButton(value: videoPost.likes, color: Colors.white, iconData: Icons.remove_red_eye_outlined)
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {

  final int value;

  final IconData iconData;

  final Color color;


  const _CustomIconButton({
    required this.value, required this.iconData, required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {
          print('asd');}, icon: Icon(iconData, color: color, size: 30)),
        Text('$value')
      ],
    );
  }

}