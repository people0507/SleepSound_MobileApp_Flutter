import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_mobile_app/constants/colors.dart';

class MyPlayer extends StatefulWidget {
  const MyPlayer({super.key, this.onClick, required this.nameSong, required this.pathImage, required this.albumTitle, required this.pathAudio});
  final Function? onClick;
  final String nameSong;
  final String pathImage;
  final String albumTitle;
  final String pathAudio;

  @override
  State<MyPlayer> createState() => _MyPlayerState();
}

class _MyPlayerState extends State<MyPlayer> {
  late AudioPlayer audioPlayer;
  Duration duration = const Duration();
  Duration position = const Duration();
  bool isPlaying = false;
  
  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    audioPlayer.onDurationChanged.listen((Duration d) {
      setState(() {
        duration = d;
      });
    });
    audioPlayer.onPositionChanged.listen((Duration p) {
      setState(() {
        position = p;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  void _playAudio() async {
    await audioPlayer.play(AssetSource(widget.pathAudio));
    setState(() {
      isPlaying = true;
    });
  }

  void _pauseAudio() async {
    await audioPlayer.pause();
    setState(() {
      isPlaying = false;
    });
  }

  void _seekAudio(double value) async {
    final position = Duration(milliseconds: value.toInt());
        await audioPlayer.seek(position);
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Image.asset(widget.pathImage,),
              const SizedBox(
                height: 50,
                width: 50,
              ),
               Text(
                widget.albumTitle,
                style:
                    const TextStyle(fontSize: 17, color: ColorPalette.detaildesColor),
              ),
              const SizedBox(
                height: 20,
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 50),
                 child: Text(
                  widget.nameSong,
                  style: const TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                           ),
               ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    Slider(
                      value: position.inMilliseconds.toDouble(),
                      min: 0.0,
                      max: duration.inMilliseconds.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          _seekAudio(value);
                        });
                      },
                    ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                        _formatDuration(position),
                        style: const TextStyle(fontSize: 15, color: Colors.white),
                                        ),
                                        Text(
                        _formatDuration(duration-position),
                        style: const TextStyle(fontSize: 15, color: Colors.white),
                                        ),
                                      ],
                                    ),
                      ),
                  ],
                ),
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                       const IconButton(
                onPressed: null,
                icon: Icon(Icons.skip_previous,
                          color: Colors.white, size: 50)),
                  IconButton(
                onPressed: isPlaying ? _pauseAudio : _playAudio,
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow,color: Colors.white,size: 50,),
              ),
              const IconButton(
                onPressed: null,
                icon: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 50,)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
