import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify/my_general_widget.dart/dowload_switch.dart';
import 'package:spotify/pages/spotify_playlist_page/widgets/turk%C4%B1sh_pop_image.dart';
import 'package:spotify/spotifyLibrary/library_list.dart';
import 'package:spotify/utils/custom_widgets/custom_played_song_bottom_container.dart';
import 'package:spotify/utils/page_decoration/color_transitions/color_transition_pink.dart';
import 'headtext_row.dart';

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
                    topHeadTextRow(), // Ders Çalışırken
                    turkishPopImageContainer(context),
                    Align(alignment: Alignment.centerRight, child: DowloadSwitch()),
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
}
