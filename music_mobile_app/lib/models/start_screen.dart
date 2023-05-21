import 'package:music_mobile_app/constants/images.dart';

class StartScreen {
  final String images ;
  final String titles ;
  final String descriptions;

  StartScreen(this.images, this.titles, this.descriptions);
}
List<StartScreen> startscreenList = [
  StartScreen(Imgs.login1,'Exclusive Music','We have an author \'s library of sounds that you will not find anywhere else'),
  StartScreen(Imgs.login2,'Relax sleep sounds','Our sounds will help to relax and improve your sleep health'),
  StartScreen(Imgs.login3,'Story for kids','Famous fairy tales with soothing sounds will help your children fall asleep faster')
];