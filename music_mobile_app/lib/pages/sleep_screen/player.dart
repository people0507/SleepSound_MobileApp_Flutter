import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_mobile_app/constants/colors.dart';

class MyPlayer extends StatefulWidget {
  const MyPlayer({super.key, this.onClick});
  final Function? onClick;

  @override
  State<MyPlayer> createState() => _MyPlayerState();
}

class _MyPlayerState extends State<MyPlayer> {
  double _currentSliderValue = 20;
  bool changePlayButton = true;
  final player = AudioPlayer();

  void swapPlaybutton() {
    setState(() {
      changePlayButton = changePlayButton == true ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Image.asset('assets/images/guitar_camp.png'),
            const SizedBox(
              height: 50,
              width: 50,
            ),
            const Text(
              'Guitar Camp',
              style: TextStyle(
                  fontSize: 17, color: ColorPalette.detaildesColor),
            ),
            const Text(
              'The Guitars ',
              style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Slider(
                      divisions: 5,
                      max:100,
                        value: _currentSliderValue,
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [ 
              GestureDetector(
                onTap: (){
                },
                child: const Icon(
                  Icons.skip_previous,color: Colors.white,size: 50)),
              GestureDetector(
                onTap: (){
                  swapPlaybutton();
                },
                child: Icon(
                  changePlayButton ? Icons.play_arrow : Icons.pause,color: Colors.white,size: 50)),
              GestureDetector(
                onTap: (){
                },
                child: const Icon(Icons.skip_next,color: Colors.white,size: 50,))
            ],)
          ],
        ),
      ),
    );
  }
}
