import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify/spotifyPlaylist/color_transition_pink.dart';
import 'package:spotify/spotifyPlaylist/headtext_row.dart';
import 'package:spotify/spotifyPlaylist/song_list.dart';
import 'package:spotify/spotifyPlaylist/turk%C4%B1sh_pop_image.dart';
import 'custom_played_song_bottom_container.dart';
class SpotifyPlayList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SpotifyPlayList();
  }
}

class _SpotifyPlayList extends State {
  bool isSwitched = false;
  //late ileride eşitlenmek zorunda eşitlenmeden kullanılmak istenirse hata alınır  ? verilmese de olur
  String? onTapSong;
  late String ontTapTitle;
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              decoration: buildColorTransition(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    topHeadTextRow(),// Ders Çalışırken
                    turkishPopImageContainer(context),
                    downloadSwitch(),
                    Column(
                      children: buildSongList(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomPlayedSongContainer(context),
        ],
      ),
    );
  }


  Align downloadSwitch() {
    return Align(
      alignment: Alignment.centerRight,
      child: Switch(
        activeColor: Colors.green,
        value: isSwitched,
        onChanged: (value) {
          setState(
            () {
              isSwitched = value;
            },
          );
        },
      ),
    );
  }
}



