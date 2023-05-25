import 'package:flutter/material.dart';
import 'package:music_mobile_app/constants/colors.dart';


class ComposerBox extends StatelessWidget {
  const ComposerBox({super.key, this.onClick, required this.pathIcon, required this.titleIcon});
  final Function? onClick;
  final String titleIcon;
  final String pathIcon;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        onClick!();
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorPalette.buttonColor),
        width: 100,
        height: 125,
        child: Stack(
          children: [
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(pathIcon)),
                ],
              ),
            ),
            Positioned(
              top: 95,
              child: Container(
                width: 100,
                height: 32,
                decoration: const BoxDecoration(
                    color: ColorPalette.slidingupColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    titleIcon,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
