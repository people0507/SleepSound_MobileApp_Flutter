import 'package:flutter/material.dart';
import 'package:music_mobile_app/components/album_box.dart';
import 'package:music_mobile_app/constants/colors.dart';

class DetailPanel extends StatefulWidget {
  const DetailPanel({
    super.key,
    required this.pathImage,
    required this.albumTitle,
    required this.songNumbers,
    required this.albumNotes,
    required this.albumCategories,
    required this.detailPack,
  });
  final String pathImage;
  final String albumTitle;
  final String songNumbers;
  final String albumNotes;
  final String albumCategories;
  final String detailPack;

  @override
  State<DetailPanel> createState() => _DetailPanelState();
}

class _DetailPanelState extends State<DetailPanel> {
  bool change = true;
  bool change1 = true;
  bool change2 = true;
  bool change3 = true;
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
                                        ColorPalette.selectedColor)),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Play',
                                      style: TextStyle(
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
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/star.png'),
                                    const Text(
                                      'Unfavorite',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: ColorPalette.unfavoriteColor),
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
                                            const Text('The Guitars ',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.white))
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
                                            const Text('Lost Without You',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.white))
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
                                            const Text('City Lights',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.white))
                                          ],
                                        )),
                                  ),
                                  SizedBox(
                                    height: 56,
                                    width: double.infinity,
                                    child: TextButton(
                                        onPressed: () {
                                          swap3();
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
                                            const Text('Romantic',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.white))
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
                                pathImage: "assets/images/bear.png",
                                albumTitle: 'Chill-hop',
                                songNumbers: "7",
                                albumNotes: 'Songs',
                                albumCategories: 'Instrumental',
                                onClick: () {},
                              ),
                              AlbumBox(
                                pathImage: "assets/images/lullaby.png",
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
