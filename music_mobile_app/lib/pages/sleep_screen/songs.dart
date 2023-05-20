class Songs {
  final String nameSong;
  final String pathImage;
  final String albumTitle;
  final String pathAudio;

  Songs(this.nameSong, this.pathImage, this.albumTitle, this.pathAudio);
  List<Songs> songs = [
    Songs(
      'There \'s Nothing Holdin\' Me Back',
      'assets/images/guitar_camp.png',
      'Guitar Camp',
      'audios/test.mp3'
    ),
    Songs(
      'There \'s Nothing Holdin\' Me Back',
      'assets/images/guitar_camp.png',
      'Guitar Camp',
      'audios/test.mp3'
    ),
    Songs(
      'There \'s Nothing Holdin\' Me Back',
      'assets/images/guitar_camp.png',
      'Guitar Camp',
      'audios/test.mp3'
    ),
  ];
  
}