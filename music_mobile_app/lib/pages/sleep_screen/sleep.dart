// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_mobile_app/components/album_box.dart';
import 'package:music_mobile_app/constants/colors.dart';
import 'package:music_mobile_app/pages/sleep_screen/detail.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorPalette.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 100, bottom: 10),
                  child: Text(
                    'Sleep',
                    style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        TextButton(
                            onHover: (value) => ColorPalette.selectedColor,
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    ColorPalette.buttonColor),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100)))),
                            onPressed: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/all_icon.png'),
                                  const Text("  "),
                                  const Text(
                                    'All',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Row(
                        children: [
                          TextButton(
                              onHover: (value) => ColorPalette.selectedColor,
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      ColorPalette.buttonColor),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100)))),
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/ambient_icon.png'),
                                    const Text("  "),
                                    const Text(
                                      'Ambient',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                            onHover: (value) => ColorPalette.selectedColor,
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    ColorPalette.buttonColor),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100)))),
                            onPressed: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/forkid_icon.png'),
                                  const Text("  "),
                                  const Text(
                                    'For Kids',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AlbumBox(
                        pathImage: "assets/images/guitar_camp.png",
                        albumTitle: 'Guitar Camp',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                        pathImage:
                                            "assets/images/guitar_camp.png",
                                        albumTitle: 'Guitar Camp',
                                        songNumbers: "7",
                                        albumNotes: 'Songs',
                                        albumCategories: 'Instrumental',
                                        detailPack:
                                            "An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.",
                                        nameSong: const [
                                                 "There's Nothing Holdin' Me Back - Shawn Mendes",
                                                 "Thunder - Gabry Ponte, LUM!X, Prezioso",
                                                  "It Ain't Me - Kygo & Selena Gomez",
                                                  "Stitches - Shawn Mendes",
                                                ],
                                        pathAudio: const [
                                                  'audios/song1.mp3',
                                                  'audios/song2.mp3',
                                                  'audios/song3.mp3',
                                                  'audios/song4.mp3',
                                                ],
                                      )));
                        },
                      ),
                      AlbumBox(
                        pathImage: "assets/images/chill_travel.png",
                        albumTitle: 'Chill-hop',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      pathImage:
                                          "assets/images/chill_travel.png",
                                      albumTitle: 'Chill-hop',
                                      songNumbers: "7",
                                      albumNotes: 'Songs',
                                      albumCategories: 'Instrumental',
                                      detailPack:
                                          "From 2019-2021, Aviino released three albums with Chillhop Music: Plush (2019), Hologramophone (2020), and Cocoon (2021). Now, the enigmatic and consistent producer is back with...",
                                         nameSong: const [
                                                 "Broken Arrows - Avicii",
                                                 "Hey Brother - Avicii",
                                                  "Clean Bandit - Symphony (feat. Zara Larsson)",
                                                  "Waiting For Love - Avicii ",
                                                ],
                                        pathAudio: const [
                                                  'audios/song5.mp3',
                                                  'audios/song6.mp3',
                                                  'audios/song7.mp3',
                                                  'audios/song8.mp3',
                                                ],)));
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AlbumBox(
                        pathImage: "assets/images/night.png",
                        albumTitle: 'The Night',
                        songNumbers: "4",
                        albumNotes: 'Hours',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      pathImage: "assets/images/night.png",
                                      albumTitle: 'The Night',
                                      songNumbers: "4",
                                      albumNotes: 'Hours',
                                      albumCategories: 'Instrumental',
                                      detailPack:
                                          "Evening and Night · The evening sun cast long shadows on the ground. · The sky was ablaze with the fire of the setting sun. ·",
                                          nameSong: const [
                                                 "BƯỚC QUA MÙA CÔ ĐƠN / Vũ.",
                                                 "BƯỚC QUA NHAU / Vũ.",
                                                  "ĐÔNG KIẾM EM / Vũ.",
                                                  "LẠ LÙNG / Vũ.",
                                                ],
                                        pathAudio: const [
                                                  'audios/song9.mp3',
                                                  'audios/song10.mp3',
                                                  'audios/song11.mp3',
                                                  'audios/song12.mp3',
                                                ],)));
                        },
                      ),
                      AlbumBox(
                        pathImage: "assets/images/sun_rise.png",
                        albumTitle: 'The Sun Rise',
                        songNumbers: "4",
                        albumNotes: 'Hours',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      pathImage: "assets/images/sun_rise.png",
                                      albumTitle: 'The Sun Rise',
                                      songNumbers: "4",
                                      albumNotes: 'Hours',
                                      albumCategories: 'Instrumental',
                                      detailPack:
                                          "Sunrise (or sunup) is the moment when the upper rim of the Sun appears on the horizon in the morning. The term can also refer to the entire process of the solar disk crossing the horizon and its accompanying atmospheric effects.",
                                          nameSong: const [
                                                 "Đường Tôi Chở Em Về / buitruonglinh",
                                                 "Thức Giấc - Da LAB",
                                                  "MẶT MỘC | Phạm Nguyên Ngọc x VAnh x Ân Nhi",
                                                  "HẠ CÒN VƯƠNG NẮNG | DATKAA x KIDO x Prod. QT BEATZ ",
                                                ],
                                        pathAudio: const [
                                                  'audios/song13.mp3',
                                                  'audios/song14.mp3',
                                                  'audios/song15.mp3',
                                                  'audios/song16.mp3',
                                                ],)));
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AlbumBox(
                        pathImage: "assets/images/chill_travel.png",
                        albumTitle: 'Chill Travel',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      pathImage:
                                          "assets/images/chill_travel.png",
                                      albumTitle: 'Chill Travel',
                                      songNumbers: "7",
                                      albumNotes: 'Songs',
                                      albumCategories: 'Instrumental',
                                      detailPack:
                                          "Annual travel insurance provides cover to those travelling on two or more holidays or business trips within a year.",
                                          nameSong: const [
                                                 "Until I Found You - Stephen Sanchez",
                                                 "Night Changes - One Direction",
                                                  "Play Date - Melanie Martinez",
                                                  "Dusk Till Dawn - ZAYN & Sia",
                                                ],
                                        pathAudio: const [
                                                  'audios/song17.mp3',
                                                  'audios/song18.mp3',
                                                  'audios/song19.mp3',
                                                  'audios/song20.mp3',
                                                ],)));
                        },
                      ),
                      AlbumBox(
                        pathImage: "assets/images/lullaby.png",
                        albumTitle: 'Lullaby',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                      pathImage: "assets/images/lullaby.png",
                                      albumTitle: 'Lullaby',
                                      songNumbers: "7",
                                      albumNotes: 'Songs',
                                      albumCategories: 'Instrumental',
                                      detailPack:
                                          "A lullaby or a cradle song, is a soothing song or piece of music that is usually played for (or sung to) children The purposes of lullabies vary.",
                                          nameSong: const [
                                                 "Rather Be Without Me - Eminem ft. Clean Bandit",
                                                 "The Days - Avicii",
                                                  "Burn Out - Martin Garrix & Justin Mylo",
                                                  "This Far - Raven & Kreyn ft. Nino Lucarelli",
                                                ],
                                        pathAudio: const [
                                                  'audios/song21.mp3',
                                                  'audios/song22.mp3',
                                                  'audios/song23.mp3',
                                                  'audios/song24.mp3',
                                                ],)));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
