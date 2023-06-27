import 'package:flutter/material.dart';
import 'package:vimeo_player_flutter/vimeo_player_flutter.dart';

class HomeVideo extends StatelessWidget {
  const HomeVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(bottom: 15),
      child: const VimeoPlayer(
        videoId: '759401631',
      ),
    );
  }
}
