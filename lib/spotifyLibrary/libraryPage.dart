import 'package:flutter/material.dart';
import 'package:spotify/my_general_widget.dart/elevated_button.dart';
import 'package:spotify/spotifyLibrary/library_list.dart';
import 'package:spotify/spotifyLibrary/recently_played_row.dart';
import 'package:spotify/spotifyLibrary/top_image_row.dart';


class SpotifyLibrary extends StatefulWidget {
  @override
  _SpotifyLibraryState createState() => _SpotifyLibraryState();
}

class _SpotifyLibraryState extends State<SpotifyLibrary> {
  

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
        buildTopImageRow(),//Kitaplığın
        buildElevatedButtonRow(context),//Çalma listeleri-Albümler-İndirilenler
        buildRecentlyPlayedRow(),//Yakınlarda Çalınanlar
        Column(children:buildSongList(context))
            ],
          ),
      ),
    );
  }

  

  Row buildElevatedButtonRow(BuildContext context){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        buildElevatedButton(context, 'Çalma Listeleri'),
        buildElevatedButton(context, 'Albümler'),
        buildElevatedButton(context, 'İndirilenler'),
      ]);
  }

}

