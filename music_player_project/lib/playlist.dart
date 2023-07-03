// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:music_player_project/mediafile.dart';

class Playlist extends MediaFile with Shuffleable{
  String name;
  List<MediaFile> mediaFiles=[];
  Playlist({
    required this.name,
    required this.mediaFiles,
    required super.title,
    required super.duration,
    required super.filePath,
  });

  void playPlaylist() {
    mediaFiles.forEach((element) {element.play();});
  }

void shufflePlaylist(){
  mediaFiles.shuffle();
  mediaFiles.forEach((element) {print(element.title);});
  
}
}
