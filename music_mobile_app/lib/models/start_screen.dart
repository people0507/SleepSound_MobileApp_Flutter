class StartScreen {
  final String images ;
  final String titles ;
  final String descriptions;

  StartScreen(this.images, this.titles, this.descriptions);
}
List<StartScreen> startscreenList = [
  StartScreen('assets/images/login1.png','Exclusive Music','We have an author \'s library of sounds that you will not find anywhere else'),
  StartScreen('assets/images/login2.png','Relax sleep sounds','Our sounds will help to relax and improve your sleep health'),
  StartScreen('assets/images/login3.png','Story for kids','Famous fairy tales with soothing sounds will help your children fall asleep faster')
];