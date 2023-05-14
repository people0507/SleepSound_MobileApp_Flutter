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
                              padding: const EdgeInsets.symmetric(horizontal: 5),
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
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
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
                                    Image.asset('assets/images/ambient_icon.png'),
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
                              padding: const EdgeInsets.symmetric(horizontal: 5),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(
                              pathImage: "assets/images/guitar_camp.png",
                        albumTitle: 'Guitar Camp',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        detailPack:"An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid."
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(
                              pathImage: "assets/images/chill_travel.png",
                        albumTitle: 'Chill-hop',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        detailPack:"From 2019-2021, Aviino released three albums with Chillhop Music: Plush (2019), Hologramophone (2020), and Cocoon (2021). Now, the enigmatic and consistent producer is back with..."
                            )));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(
                             pathImage: "assets/images/night.png",
                        albumTitle: 'The Night',
                        songNumbers: "4",
                        albumNotes: 'Hours',
                        albumCategories: 'Instrumental',
                        detailPack:"Evening and Night · The evening sun cast long shadows on the ground. · The sky was ablaze with the fire of the setting sun. ·"
                            )));
                        },
                      ),
                      AlbumBox(
                        pathImage: "assets/images/sun_rise.png",
                        albumTitle: 'The Sun Rise',
                        songNumbers: "4",
                        albumNotes: 'Hours',
                        albumCategories: 'Instrumental',
                        onClick: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(
                            pathImage: "assets/images/sun_rise.png",
                        albumTitle: 'The Sun Rise',
                        songNumbers: "4",
                        albumNotes: 'Hours',
                        albumCategories: 'Instrumental',
                        detailPack:"Sunrise (or sunup) is the moment when the upper rim of the Sun appears on the horizon in the morning. The term can also refer to the entire process of the solar disk crossing the horizon and its accompanying atmospheric effects."
                            )));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(
                            pathImage: "assets/images/chill_travel.png",
                        albumTitle: 'Chill Travel',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        detailPack:"Annual travel insurance provides cover to those travelling on two or more holidays or business trips within a year."
                            )));
                        },
                      ),
                      AlbumBox(
                        pathImage: "assets/images/lullaby.png",
                        albumTitle: 'Lullaby',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        onClick: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(
                            pathImage: "assets/images/lullaby.png",
                        albumTitle: 'Lullaby',
                        songNumbers: "7",
                        albumNotes: 'Songs',
                        albumCategories: 'Instrumental',
                        detailPack:"A lullaby or a cradle song, is a soothing song or piece of music that is usually played for (or sung to) children The purposes of lullabies vary."
                            )));
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
