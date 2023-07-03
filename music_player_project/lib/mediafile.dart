import 'package:music_player_project/playable.dart';

class MediaFile implements Playable{
  String title;
  String duration;
  String filePath;
  MediaFile({
    required this.title,
    required this.duration,
    required this.filePath,
  });
  
  @override
  void pause() {
    print('Pausing ${this.title} ...');

  }
  
  @override
  void play() {
    print('Playing ${this.title} ...');
  }
  
  @override
  void stop() {
    print('Stopped ${this.title} ...');
  }
  
}

mixin Shuffleable{
shufflePlaylist(){

}
}