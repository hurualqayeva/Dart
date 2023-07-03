import 'package:music_player_project/mediafile.dart';
import 'package:music_player_project/playlist.dart';

void main(List<String> args) {
  MediaFile song1=MediaFile(title: 'Tom Odell - Another love', duration: '4:07', filePath: 'https://www.youtube.com/watch?v=MwpMEbgC7DA');
  MediaFile song2=MediaFile(title: 'Batuhan Kordel - Anıları Sakla', duration: '3:41', filePath: 'https://www.youtube.com/watch?v=oCQMj4MleuQ');
  Playlist myPlaylist=Playlist(name: 'My Playlist', mediaFiles: [song1,song2], title: '', duration: '', filePath: '');
  myPlaylist.playPlaylist();

  song2.pause();
  myPlaylist.shufflePlaylist();

}