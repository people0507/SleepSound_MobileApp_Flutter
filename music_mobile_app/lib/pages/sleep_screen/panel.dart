import 'package:flutter/material.dart';
import 'package:music_mobile_app/components/album_box.dart';
import 'package:music_mobile_app/constants/colors.dart';
import 'package:music_mobile_app/constants/images.dart';
import 'package:music_mobile_app/pages/sleep_screen/player.dart';

class DetailPanel extends StatefulWidget {
  const DetailPanel({
    super.key,
    required this.pathImage,
    required this.albumTitle,
    required this.songNumbers,
    required this.albumNotes,
    required this.albumCategories,
    required this.detailPack, required this.nameSong, required this.pathAudio,
    
  });
  final String pathImage;
  final String albumTitle;
  final String songNumbers;
  final String albumNotes;
  final String albumCategories;
  final String detailPack;
  final List<String> nameSong;
  final List<String> pathAudio;

  @override
  State<DetailPanel> createState() => _DetailPanelState();
}

class _DetailPanelState extends State<DetailPanel> {
  bool change = true;
  bool change1 = true;
  bool change2 = true;
  bool change3 = true;
  bool changePlayButton = true;
  bool changeFavoriteButton = true;
  late final ScrollController controller;
  void swap() {
    setState(() {
      change = change == true ? false : true;
    });
  }

  void swap1() {
    setState(() {
      change1 = change1 == true ? false : true;
    });
  }

  void swap2() {
    setState(() {
      change2 = change2 == true ? false : true;
    });
  }

  void swap3() {
    setState(() {
      change3 = change3 == true ? false : true;
    });
  }

  void swapPlaybutton() {
    setState(() {
      changePlayButton = changePlayButton == true ? false : true;
    });
  }

  void swapFavoritebutton() {
    setState(() {
      changeFavoriteButton = changeFavoriteButton == true ? false : true;
    });
  }



  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          color: ColorPalette.backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(26), topRight: Radius.circular(26)),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 4,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPalette.slidingupColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.albumTitle,
                              style: const TextStyle(
                                  fontSize: 34,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              Text(
                                widget.songNumbers,
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: ColorPalette.detaildesColor),
                              ),
                              const Text(' '),
                              Text(
                                widget.albumNotes,
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: ColorPalette.detaildesColor),
                              ),
                              const Text(' . ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorPalette.detaildesColor)),
                              Text(
                                widget.albumCategories,
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: ColorPalette.detaildesColor),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 375,
                      height: 86,
                      decoration: const BoxDecoration(
                          border: Border.symmetric(
                              horizontal:
                                  BorderSide(color: ColorPalette.buttonColor))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 164,
                            height: 38,
                            child: TextButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    backgroundColor: MaterialStateProperty.all(
                                        changePlayButton == true
                                            ? ColorPalette.unfavoriteColor
                                            : ColorPalette.selectedColor)),
                                onPressed: () {
                                  swapPlaybutton();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      changePlayButton == true
                                          ? Icons.lock_open_outlined
                                          : Icons.play_arrow,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      changePlayButton == true
                                          ? 'Unlock'
                                          : 'Play  ',
                                      style: const TextStyle(
                                          fontSize: 17, color: Colors.white),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: 164,
                            height: 38,
                            child: TextButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    backgroundColor: MaterialStateProperty.all(
                                        ColorPalette.bottomNaviColor)),
                                onPressed: () {
                                  swapFavoritebutton();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      changeFavoriteButton == true
                                          ? Icons.star
                                          : Icons.star_half,
                                      color: changeFavoriteButton
                                          ? Colors.white
                                          : ColorPalette.unfavoriteColor,
                                    ),
                                    Text(
                                      changeFavoriteButton == true
                                          ? 'Favorite'
                                          : 'UnFavorite',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: changeFavoriteButton
                                              ? Colors.white
                                              : ColorPalette.unfavoriteColor),
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'About this pack',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(''),
                          Text(
                            widget.detailPack,
                            style: const TextStyle(
                                fontSize: 17,
                                color: ColorPalette.detaildesColor),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: ColorPalette.bottomNaviColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'List of songs'.toUpperCase(),
                                style: const TextStyle(
                                    color: ColorPalette.detaildesColor,
                                    fontSize: 13),
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: ColorPalette
                                                    .slidingupColor))),
                                    height: 56,
                                    width: double.infinity,
                                    child: TextButton(
                                        onPressed: () {
                                          swap();
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                       MyPlayer(
                                                         albumTitle: widget.albumTitle,
                                                        nameSong: widget.nameSong[0],
                                                        pathAudio: widget.pathAudio[0],
                                                        pathImage: widget.pathImage,
                                                      )));
        
                                        },
                                        child: Row(
                                          children: [
                                            const Text(
                                              '01',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: ColorPalette
                                                      .detaildesColor),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: ColorPalette
                                                        .playbuttonColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Icon(
                                                  change == true
                                                      ? Icons.play_arrow
                                                      : Icons.pause,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                             Expanded(
                                               child: Text(widget.nameSong[0],
                                                  style: const TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white),
                                                      overflow: TextOverflow.ellipsis),
                                             )
                                          ],
                                        )),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: ColorPalette
                                                    .slidingupColor))),
                                    height: 56,
                                    width: double.infinity,
                                    child: TextButton(
                                        onPressed: () {
                                          swap1();
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                       MyPlayer(
                                                        albumTitle: widget.albumTitle,
                                                        nameSong: widget.nameSong[1],
                                                        pathAudio: widget.pathAudio[1],
                                                        pathImage: widget.pathImage,
                                                      )));
                                        },
                                        child: Row(
                                          children: [
                                            const Text(
                                              '02',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: ColorPalette
                                                      .detaildesColor),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: ColorPalette
                                                        .playbuttonColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Icon(
                                                  change1 == true
                                                      ? Icons.play_arrow
                                                      : Icons.pause,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                             Expanded(
                                               child: Text(widget.nameSong[1],
                                                  style: const TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white
                                                      ),
                                                      overflow: TextOverflow.ellipsis),
                                             )
                                          ],
                                        )),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: ColorPalette
                                                    .slidingupColor))),
                                    height: 56,
                                    width: double.infinity,
                                    child: TextButton(
                                        onPressed: () {
                                          swap2();
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                       MyPlayer(
                                                         albumTitle: widget.albumTitle,
                                                        nameSong: widget.nameSong[2],
                                                        pathAudio: widget.pathAudio[2],
                                                        pathImage: widget.pathImage,
                                                      )));
                                        },
                                        child: Row(
                                          children: [
                                            const Text(
                                              '03',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: ColorPalette
                                                      .detaildesColor),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: ColorPalette
                                                        .playbuttonColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Icon(
                                                  change2 == true
                                                      ? Icons.play_arrow
                                                      : Icons.pause,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                             Expanded(
                                               child: Text(widget.nameSong[2],
                                                  style: const TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white),
                                                      overflow: TextOverflow.ellipsis),
                                             )
                                          ],
                                        )),
                                  ),
                                  SizedBox(
                                    height: 56,
                                    width: double.infinity,
                                    child: TextButton(
                                        onPressed: () {
                                          swap3();
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                       MyPlayer(
                                                         albumTitle: widget.albumTitle,
                                                        nameSong: widget.nameSong[3],
                                                        pathAudio: widget.pathAudio[3],
                                                        pathImage: widget.pathImage,
                                                      )));
                                        },
                                        child: Row(
                                          children: [
                                            const Text(
                                              '04',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: ColorPalette
                                                      .detaildesColor),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Container(
                                                width: 32,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: ColorPalette
                                                        .playbuttonColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Icon(
                                                  change3 == true
                                                      ? Icons.play_arrow
                                                      : Icons.pause,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                             Expanded(
                                               child: Text(widget.nameSong[3],
                                                  style: const TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.white),
                                                      overflow: TextOverflow.ellipsis),
                                             )
                                          ],
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Featured On',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumBox(
                                pathImage: Imgs.bear,
                                albumTitle: 'Chill-hop',
                                songNumbers: "7",
                                albumNotes: 'Songs',
                                albumCategories: 'Instrumental',
                                onClick: () {},
                              ),
                              AlbumBox(
                                pathImage: Imgs.lullaby,
                                albumTitle: 'Lullaby',
                                songNumbers: "7",
                                albumNotes: 'Songs',
                                albumCategories: 'Instrumental',
                                onClick: () {},
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
