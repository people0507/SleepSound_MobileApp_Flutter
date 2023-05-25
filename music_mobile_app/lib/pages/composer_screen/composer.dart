import 'package:flutter/material.dart';
import 'package:music_mobile_app/components/composer_box.dart';
import 'package:music_mobile_app/constants/colors.dart';
import 'package:music_mobile_app/constants/images.dart';

class ComposerScreen extends StatefulWidget {
  const ComposerScreen({super.key});

  @override
  State<ComposerScreen> createState() => _ComposerScreenState();
}

class _ComposerScreenState extends State<ComposerScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorPalette.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                     Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'Composer',
                    style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                Text(
                  'Child',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Text(
                  'Quickly stabilize your baby’s emotions',
                  style: TextStyle(fontSize: 12, color: ColorPalette.detaildesColor),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      ComposerBox( titleIcon: 'Female voice',pathIcon: Imgs.girlicon,onClick: null,),
                      ComposerBox( titleIcon: 'White noize',pathIcon: Imgs.soundicon,onClick: null,),
                      ComposerBox( titleIcon: 'Lullaby',pathIcon: Imgs.lullabyicon,onClick: null,)
                    ],),
                  ),
                )
                    ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                Text(
                  'Nature',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Text(
                  'It will allow you to merge with nature',
                  style: TextStyle(fontSize: 12, color: ColorPalette.detaildesColor),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: SingleChildScrollView(
                    
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                      ComposerBox( titleIcon: 'Rain',pathIcon: Imgs.rainwatericon,onClick: null,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: ComposerBox( titleIcon: 'Forest',pathIcon: Imgs.soundicon,onClick: null,),
                      ),
                      ComposerBox( titleIcon: 'Ocean',pathIcon: Imgs.waveicon,onClick: null,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: ComposerBox( titleIcon: 'Fire',pathIcon: Imgs.fireicon,onClick: null,),
                      ),
                      ComposerBox( titleIcon: 'Storm',pathIcon: Imgs.stormyicon,onClick: null,)
                    ],),
                  ),
                )
                    ],
                ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                Text(
                  'Animals',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Text(
                  'Animal voices will improve your sleep',
                  style: TextStyle(fontSize: 12, color: ColorPalette.detaildesColor),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      ComposerBox( titleIcon: 'Birds',pathIcon: Imgs.birdicon,onClick: null,),
                      ComposerBox( titleIcon: 'Cats',pathIcon: Imgs.caticon,onClick: null,),
                      ComposerBox( titleIcon: 'Frogs',pathIcon: Imgs.frogicon,onClick: null,)
                    ],),
                  ),
                )
                    ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                Text(
                  'Industrial',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                Text(
                  'Quickly stabilize your baby’s emotions',
                  style: TextStyle(fontSize: 12, color: ColorPalette.detaildesColor),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: SingleChildScrollView(
                    
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                      ComposerBox( titleIcon: 'Train',pathIcon: Imgs.trainicon,onClick: null,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: ComposerBox( titleIcon: 'Aircraft',pathIcon: Imgs.airplaneicon,onClick: null,),
                      ),
                      ComposerBox( titleIcon: 'City',pathIcon: Imgs.cityicon,onClick: null,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: ComposerBox( titleIcon: 'Caffe',pathIcon: Imgs.coffeeicon,onClick: null,),
                      ),
                    ],),
                  ),
                )
                    ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
