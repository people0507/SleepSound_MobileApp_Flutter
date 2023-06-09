// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:music_mobile_app/constants/images.dart';
import 'package:music_mobile_app/pages/sleep_screen/panel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen(
      {super.key,
      required this.pathImage,
      required this.albumTitle,
      required this.songNumbers,
      required this.albumNotes,
      required this.albumCategories,
      required this.detailPack, required this.nameSong, required this.pathAudio});
  final String pathImage;
  final String albumTitle;
  final String songNumbers;
  final String albumNotes;
  final String albumCategories;
  final String detailPack;
  final List<String> nameSong;
  final List<String> pathAudio;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.blueAccent,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SlidingUpPanel(
          panelBuilder: (controller) => DetailPanel(
            albumCategories: widget.albumCategories,
            albumNotes: widget.albumNotes,
            albumTitle: widget.albumTitle,
            pathImage: widget.pathImage,
            songNumbers: widget.songNumbers,
            detailPack: widget.detailPack,
            nameSong: widget.nameSong,
            pathAudio: widget.pathAudio,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(26),
            topRight: Radius.circular(26),
          ),
          maxHeight: 750,
          minHeight: 200,
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Imgs.detail),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image(image: AssetImage(Imgs.sleep)),
                          const Text(
                            'Mood',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'Lighthearted',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const Text('     '),
                      Column(
                        children: [
                          Image(image: AssetImage(Imgs.dreams)),
                          const Text(
                            'Dreams',
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                          const Text(
                            'Daydreams',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
