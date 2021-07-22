// ignore: import_of_legacy_library_into_null_safe
import 'package:audioplayers/audio_cache.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:audioplayers/audioplayers.dart';

class MusicPlayer {
  AudioPlayer player = AudioPlayer();
  AudioCache cache = AudioCache();
  
  static final MusicPlayer instance = MusicPlayer._privateConstructor();

  MusicPlayer._privateConstructor() {
    // You can set volume as you need
    // Since it's a background music, I set it to 0.6
    this.player.setVolume(0.6);
  }

  Future play(String filePath) async {
    player.stop();
    player = await cache.loop(filePath);
  }

  void stop() {
    player.stop();
  }
  
  // ignore: unused_element
  void _playFile() async {
  MusicPlayer.instance.play("sounds/farm.mp3");
}

// ignore: unused_element
void _stopFile() async {
  MusicPlayer.instance.stop();
}
}
