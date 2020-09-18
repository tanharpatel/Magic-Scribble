import 'package:flutter/material.dart';

import 'dart:core';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatefulWidget {
  static final String id = "Video";
  final String videoUrl;
  const VideoPage({Key key, this.videoUrl}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  var randomVideoPage;
  YoutubePlayerController _controller;

  List<VideoPage> hes = [
    VideoPage(
      videoUrl: 'https://youtu.be/0aSTVg2Pd1k',
    ),
    VideoPage(
      videoUrl: 'https://youtu.be/BA2m1bQY12c',
    ),
    VideoPage(
      videoUrl: 'https://youtu.be/aGoUv94USHk',
    ),
    VideoPage(
      videoUrl: 'https://youtu.be/1ZI5ySmQhxE',
    ),
    VideoPage(
      videoUrl: 'https://youtu.be/pWkC3Pa29JM',
    ),
    VideoPage(
      videoUrl: 'https://youtu.be/iDVItAX-meU',
    ),
    VideoPage(
      videoUrl: 'https://youtu.be/3CZvKpVUX9g',
    ),
    VideoPage(
      videoUrl: 'https://youtu.be/ISBx2IyZy9I',
    ),
  ];

  @override
  void initState() {
    super.initState();
    randomVideoPage = (hes..shuffle()).first;
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(randomVideoPage.videoUrl),
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ));

    print(randomVideoPage.videoUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.amber,
              ),
            ),
          ),
         ],
      ),
    );
  }
}
