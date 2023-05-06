import 'package:flutter/material.dart';
import 'package:music_mobile_app/constants/colors.dart';

class AlbumBox extends StatelessWidget {
  const AlbumBox(
      {super.key,
      required this.pathImage,
      required this.albumTitle,
      required this.songNumbers,
      required this.albumNotes,
      required this.albumCategories,
      this.onClick});

  final String pathImage;
  final String albumTitle;
  final String songNumbers;
  final String albumNotes;
  final String albumCategories;
  final Function? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick!();
      },
      child: SizedBox(
        width: 164,
        height: 220,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(pathImage),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: ColorPalette.playbuttonColor,
                      borderRadius: BorderRadius.circular(99)
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
              padding: const EdgeInsets.symmetric(vertical:10),
              child: Text(
                albumTitle,
                style: const TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
                Row(
                  children: [
                    Text(
                      songNumbers,
                      style: const TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    const Text(' '),
                    Text(
                      albumNotes,
                      style: const TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    const Text(' . ',
                        style: TextStyle(fontSize: 13, color: Colors.white)),
                    Text(
                      albumCategories,
                      style: const TextStyle(fontSize: 13, color: Colors.white),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
