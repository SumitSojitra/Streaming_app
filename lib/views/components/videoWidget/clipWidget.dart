import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class ClipWidget extends StatefulWidget {
  const ClipWidget({super.key, required this.videoUrl});

  final String videoUrl;

  @override
  State<ClipWidget> createState() => _ClipWidgetState();
}

class _ClipWidgetState extends State<ClipWidget> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(widget.videoUrl);
    initializeVideoPlayerFuture = videoPlayerController.initialize().then((_) {
      videoPlayerController.play();
      videoPlayerController.setLooping(true);

      videoPlayerOptions:
      VideoPlayerOptions(mixWithOthers: true);
      videoPlayerController.addListener(() {
        setState(() {});
      });
    });

    final chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );
    final playerWidget = Chewie(
      controller: chewieController,
    );
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
    chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: 4.1 / 8,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(videoPlayerController),
                  ClosedCaption(text: videoPlayerController.value.caption.text),
                  // _ControlsOverlay(controller: videoPlayerController),
                  VideoProgressIndicator(videoPlayerController,
                      allowScrubbing: true),
                ],
              ),
            );
          } else {
            return Center(
              child: LinearProgressIndicator(),
            );
          }
        });
  }
}
