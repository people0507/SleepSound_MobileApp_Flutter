// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_mobile_app/constants/colors.dart';
import 'package:music_mobile_app/constants/images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: const Text(
                    'Profile',
                    style: TextStyle(fontSize: 34, color: Colors.white),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        Image(image: AssetImage(Imgs.usericon)),
                        Text(
                          'Authorization',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: SizedBox(
                            width: 290.0,
                            child: Text(
                              'In order to access the library of favorite packs of sounds, log in with Apple ID',
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorPalette.detaildesColor,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 5),
                          child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      ColorPalette.playbuttonColor),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100)))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage(Imgs.googleicon)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Login with Google',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )),
                        ),
                        
                      ],
                    ),
                  ),
                  width: double.infinity,
                  height: 252,
                  decoration: BoxDecoration(
                      color: ColorPalette.slidingupColor,
                      borderRadius: BorderRadius.circular(24)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.symmetric(horizontal: BorderSide(color: ColorPalette.bottomNaviColor))
                                ),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                          Image(image: AssetImage(Imgs.crownicon)),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Get premium',style: TextStyle(fontSize: 17,color: ColorPalette.unfavoriteColor),),
                                        ],),
                                        Icon(Icons.arrow_forward_ios_outlined,color: ColorPalette.unfavoriteColor,)
                                      ],
                                    )),
                              )
                            ],
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.symmetric(horizontal: BorderSide(color: ColorPalette.bottomNaviColor))
                                ),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                          Image(image: AssetImage(Imgs.docicon)),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Private policy',style: TextStyle(fontSize: 17,color: Colors.white),),
                                        ],),
                                        Icon(Icons.arrow_forward_ios_outlined,color: ColorPalette.slidingupColor,)
                                      ],
                                    )),
                              )
                            ],
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.symmetric(horizontal: BorderSide(color: ColorPalette.bottomNaviColor))
                                ),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                          Image(image: AssetImage(Imgs.docicon)),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('License agreement',style: TextStyle(fontSize: 17,color: Colors.white),),
                                        ],),
                                        Icon(Icons.arrow_forward_ios_outlined,color: ColorPalette.slidingupColor,)
                                      ],
                                    )),
                              )
                            ],
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.symmetric(horizontal: BorderSide(color: ColorPalette.bottomNaviColor))
                                ),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                          Image(image: AssetImage(Imgs.drawingicon)),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Rate us',style: TextStyle(fontSize: 17,color: Colors.white),),
                                        ],),
                                        Icon(Icons.arrow_forward_ios_outlined,color: ColorPalette.slidingupColor,)
                                      ],
                                    )),
                              )
                            ],
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.symmetric(horizontal: BorderSide(color: ColorPalette.bottomNaviColor))
                                ),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                          Image(image: AssetImage(Imgs.mailicon)),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Send Feedback',style: TextStyle(fontSize: 17,color: Colors.white),),
                                        ],),
                                        Icon(Icons.arrow_forward_ios_outlined,color: ColorPalette.slidingupColor,)
                                      ],
                                    )),
                              )
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
