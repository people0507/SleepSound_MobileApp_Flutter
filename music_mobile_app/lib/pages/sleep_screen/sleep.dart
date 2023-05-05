import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:music_mobile_app/constants/colors.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea  (
      child: Scaffold(
        backgroundColor: ColorPalette.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Padding(
                  padding: EdgeInsets.only(top:100,bottom: 20),
                  child: Text('Sleep',
                  style:TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ) ,),
                ),
                Row(
                  children: [
                  Row(
                    children: [
                  TextButton(
                    onHover: (value) => ColorPalette.selectedColor,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(ColorPalette.buttonColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
                    ),
                    onPressed: (){}, 
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Image.asset('assets/images/all_icon.png'),
                          const Text("  "),
                          const Text('All',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),)
                        ],
                      ),
                    ))
                ],),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(children: [
                    TextButton(
                      onHover: (value) => ColorPalette.selectedColor,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(ColorPalette.buttonColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
                      ),
                      onPressed: (){}, 
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Image.asset('assets/images/ambient_icon.png'),
                            const Text("  "),
                            const Text('Ambient',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),)
                          ],
                        ),
                      ))
                  ],),
                ),
                Row(children: [
                  TextButton(
                    onHover: (value) => ColorPalette.selectedColor,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(ColorPalette.buttonColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
                    ),
                    onPressed:(){}, 
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Image.asset('assets/images/forkid_icon.png'),
                          const Text("  "),
                          const Text('For Kids',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),)
                        ],
                      ),
                    ))
                ],),
                ],)
              ],
          ),
        ),
      ),
    );
  }
}