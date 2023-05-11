// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:music_mobile_app/constants/colors.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool change = true;
  bool change1 = true;
  bool change2 = true;
  bool change3 = true;

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
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(26),
            topRight: Radius.circular(26),
          ),
          maxHeight: 750,
          minHeight: 200,
          panel: Container(
            decoration: BoxDecoration(
              color: ColorPalette.backgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(26), topRight: Radius.circular(26)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 4,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorPalette.slidingupColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Guitar Camp',
                            style: const TextStyle(
                                fontSize: 34,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text(
                              '7',
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: ColorPalette.detaildesColor),
                            ),
                            const Text(' '),
                            Text(
                              'Songs',
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: ColorPalette.detaildesColor),
                            ),
                            const Text(' . ',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: ColorPalette.detaildesColor)),
                            Text(
                              'Instrumental',
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
                    decoration: BoxDecoration(
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
                                children: [
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
                                  Text(
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
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About this pack',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        Text(''),
                        Text(
                          'An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.',
                          style: TextStyle(
                              fontSize: 17, color: ColorPalette.detaildesColor),
                        )
                      ],
                    ),
                  ),
                  Container(
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
                            style: TextStyle(
                                color: ColorPalette.detaildesColor,
                                fontSize: 13),
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: ColorPalette.slidingupColor))),
                                height: 56,
                                width: double.infinity,
                                child: TextButton(
                                    onPressed: () {
                                      swap();
                                    },
                                    child: Row(
                                      children: [
                                        Text('01',style: TextStyle(fontSize: 13,color: ColorPalette.detaildesColor),),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: Container(
                                            width: 32,
                                            height:32,
                                            decoration: BoxDecoration(
                                              color: ColorPalette.playbuttonColor,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Icon(
                                                  change == true ? Icons.play_arrow : Icons.pause,color: Colors.white,),
                                          ),
                                        ),
                                            Text('The Guitars ',style: TextStyle(fontSize: 17,color: Colors.white))
                                      ],
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: ColorPalette.slidingupColor))),
                                height: 56,
                                width: double.infinity,
                                child: TextButton(
                                    onPressed: () {
                                      swap1();
                                    },
                                    child: Row(
                                      children: [
                                        Text('02',style: TextStyle(fontSize: 13,color: ColorPalette.detaildesColor),),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: Container(
                                            width: 32,
                                            height:32,
                                            decoration: BoxDecoration(
                                              color: ColorPalette.playbuttonColor,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Icon(
                                                    change1 == true ? Icons.play_arrow : Icons.pause,color: Colors.white,),
                                          ),
                                        ),
                                            Text('Lost Without You',style: TextStyle(fontSize: 17,color: Colors.white))
                                      ],
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: ColorPalette.slidingupColor))),
                                height: 56,
                                width: double.infinity,
                                child: TextButton(
                                    onPressed: () {
                                      swap2();
                                    },
                                    child: Row(
                                      children: [
                                        Text('03',style: TextStyle(fontSize: 13,color: ColorPalette.detaildesColor),),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: Container(
                                            width: 32,
                                            height:32,
                                            decoration: BoxDecoration(
                                              color: ColorPalette.playbuttonColor,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Icon(
                                                    change2 == true ? Icons.play_arrow : Icons.pause,color: Colors.white,),
                                          ),
                                        ),
                                            Text('City Lights',style: TextStyle(fontSize: 17,color: Colors.white))
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
                                        Text('04',style: TextStyle(fontSize: 13,color: ColorPalette.detaildesColor),),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: Container(
                                            width: 32,
                                            height:32,
                                            decoration: BoxDecoration(
                                              color: ColorPalette.playbuttonColor,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Icon(
                                                    change3 == true ? Icons.play_arrow : Icons.pause,color: Colors.white,),
                                          ),
                                        ),
                                            Text('Romantic',style: TextStyle(fontSize: 17,color: Colors.white))
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/detail.png'),
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
                          Image.asset('assets/images/sleep.png'),
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
                          Image.asset('assets/images/dreams.png'),
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
