import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify/pages/playlist_page/widgets/turk%C4%B1sh_pop_image.dart';
import 'package:spotify/utils/custom_widgets/dowload_switch.dart';
import 'package:spotify/pages/library_page/source/library_list.dart';
import 'package:spotify/utils/page_decoration/color_transitions/color_transition_pink.dart';
import 'widgets/head_text_and_buttons.dart';

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
              decoration: buildColorTransitionPink(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:EdgeInsets.only(top:20),
                      child: HeadTextAndButtons(),
                    ), // Ders Çalışırken
                    turkishPopInfo(context),
                    Align(alignment: Alignment.centerRight, child: DowloadSwitch()),
                    Column(children: buildSongList(context),
                    
                    ),
                  ],
                ),
              ),
            ),
          ),
         
        ],
      
      ),
    );
  }
}
