

import 'package:flutter/material.dart';
import 'package:music_mobile_app/components/album_box.dart';
import 'package:music_mobile_app/constants/audios.dart';
import 'package:music_mobile_app/constants/colors.dart';
import 'package:music_mobile_app/constants/images.dart';
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
                  padding: EdgeInsets.only(top: 50, bottom: 10),
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
                            child: const Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Image(image: AssetImage(Imgs.allicon)),
                                  Text("  "),
                                  Text(
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
                              child: const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    Image(image: AssetImage(Imgs.allicon)),
                                    Text("  "),
                                    Text(
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
                            child: const Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Image(image: AssetImage(Imgs.forkidicon)),
                                  Text("  "),
                                  Text(
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
                        pathImage: Imgs.guitarcamp,
                        albumTitle: 'Guitar Camp',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailScreen(
                                        pathImage:Imgs.guitarcamp,
                                        albumTitle: 'Guitar Camp',
                                        songNumbers: "7",
                                        albumNotes: 'Songs',
                                        albumCategories: 'Instrumental',
                                        detailPack:
                                            "An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.",
                                        nameSong: [
                                                 "There's Nothing Holdin' Me Back - Shawn Mendes",
                                                 "Thunder - Gabry Ponte, LUM!X, Prezioso",
                                                  "It Ain't Me - Kygo & Selena Gomez",
                                                  "Stitches - Shawn Mendes",
                                                ],
                                        pathAudio: [
                                                  Audios.thereisnothingoldinmeback,
                                                  Audios.thunder,
                                                  Audios.itaintme,
                                                  Audios.stitches
                                                ],
                                      )));
                        },
                      ),
                      AlbumBox(
                        pathImage: Imgs.chilltravel,
                        albumTitle: 'Chill-hop',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailScreen(
                                      pathImage:Imgs.chilltravel,
                                      albumTitle: 'Chill-hop',
                                      songNumbers: "7",
                                      albumNotes: 'Songs',
                                      albumCategories: 'Instrumental',
                                      detailPack:
                                          "From 2019-2021, Aviino released three albums with Chillhop Music: Plush (2019), Hologramophone (2020), and Cocoon (2021). Now, the enigmatic and consistent producer is back with...",
                                         nameSong: [
                                                 "Broken Arrows - Avicii",
                                                 "Hey Brother - Avicii",
                                                  "Clean Bandit - Symphony (feat. Zara Larsson)",
                                                  "Waiting For Love - Avicii ",
                                                ],
                                        pathAudio: [
                                                  Audios.brokenarrows,
                                                  Audios.heybrother,
                                                  Audios.cleanbandit,
                                                  Audios.waitingforlove
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
                        pathImage: Imgs.night,
                        albumTitle: 'The Night',
                        songNumbers: "4",
                        albumNotes: 'Hours',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailScreen(
                                      pathImage: Imgs.night,
                                      albumTitle: 'The Night',
                                      songNumbers: "4",
                                      albumNotes: 'Hours',
                                      albumCategories: 'Instrumental',
                                      detailPack:
                                          "Evening and Night · The evening sun cast long shadows on the ground. · The sky was ablaze with the fire of the setting sun. ·",
                                          nameSong: [
                                                 "BƯỚC QUA MÙA CÔ ĐƠN / Vũ.",
                                                 "BƯỚC QUA NHAU / Vũ.",
                                                  "ĐÔNG KIẾM EM / Vũ.",
                                                  "LẠ LÙNG / Vũ.",
                                                ],
                                        pathAudio: [
                                                  Audios.buocquamuacodon,
                                                  Audios.buocquanhau,
                                                  Audios.dongkiemem,
                                                  Audios.lalung
                                                ],)));
                        },
                      ),
                      AlbumBox(
                        pathImage: Imgs.sunrise,
                        albumTitle: 'The Sun Rise',
                        songNumbers: "4",
                        albumNotes: 'Hours',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailScreen(
                                      pathImage: Imgs.sunrise,
                                      albumTitle: 'The Sun Rise',
                                      songNumbers: "4",
                                      albumNotes: 'Hours',
                                      albumCategories: 'Instrumental',
                                      detailPack:
                                          "Sunrise (or sunup) is the moment when the upper rim of the Sun appears on the horizon in the morning. The term can also refer to the entire process of the solar disk crossing the horizon and its accompanying atmospheric effects.",
                                          nameSong: [
                                                 "Đường Tôi Chở Em Về / buitruonglinh",
                                                 "Thức Giấc - Da LAB",
                                                  "MẶT MỘC | Phạm Nguyên Ngọc x VAnh x Ân Nhi",
                                                  "HẠ CÒN VƯƠNG NẮNG | DATKAA x KIDO x Prod. QT BEATZ ",
                                                ],
                                        pathAudio: [
                                                  Audios.duongtoitroemve,
                                                  Audios.thucgiac,
                                                  Audios.matmoc,
                                                  Audios.haconvuongnang
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
                        pathImage: Imgs.chilltravel,
                        albumTitle: 'Chill Travel',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailScreen(
                                      pathImage:Imgs.chilltravel,
                                      albumTitle: 'Chill Travel',
                                      songNumbers: "7",
                                      albumNotes: 'Songs',
                                      albumCategories: 'Instrumental',
                                      detailPack:
                                          "Annual travel insurance provides cover to those travelling on two or more holidays or business trips within a year.",
                                          nameSong: [
                                                 "Until I Found You - Stephen Sanchez",
                                                 "Night Changes - One Direction",
                                                  "Play Date - Melanie Martinez",
                                                  "Dusk Till Dawn - ZAYN & Sia",
                                                ],
                                        pathAudio: [
                                                  Audios.untilifoundyou,
                                                  Audios.nightchanges,
                                                  Audios.playdate,
                                                  Audios.dusktilldawn
                                                ],)));
                        },
                      ),
                      AlbumBox(
                        pathImage: Imgs.lullaby,
                        albumTitle: 'Lullaby',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailScreen(
                                      pathImage: Imgs.lullaby,
                                      albumTitle: 'Lullaby',
                                      songNumbers: "7",
                                      albumNotes: 'Songs',
                                      albumCategories: 'Instrumental',
                                      detailPack:
                                          "A lullaby or a cradle song, is a soothing song or piece of music that is usually played for (or sung to) children The purposes of lullabies vary.",
                                          nameSong: [
                                                 "Rather Be Without Me - Eminem ft. Clean Bandit",
                                                 "The Days - Avicii",
                                                  "Burn Out - Martin Garrix & Justin Mylo",
                                                  "This Far - Raven & Kreyn ft. Nino Lucarelli",
                                                ],
                                        pathAudio: [
                                                  Audios.ratherbewithoutme,
                                                  Audios.thedays,
                                                  Audios.burnout,
                                                  Audios.thisfar
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
