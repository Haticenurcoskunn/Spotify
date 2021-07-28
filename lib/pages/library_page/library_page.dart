import 'package:flutter/material.dart';
import 'package:spotify/pages/library_page/widgets/elevated_buttons.dart';
import 'package:spotify/pages/library_page/source/library_list.dart';
import 'package:spotify/pages/library_page/widgets/recently_played_row.dart';
import 'package:spotify/pages/library_page/widgets/head_image_title_and_buttons.dart';
import 'package:spotify/utils/custom_widgets/custom_played_song_bottom_container.dart';

class LibraryPage extends StatefulWidget {
  @override
  _SpotifyLibraryState createState() => _SpotifyLibraryState();
}

class _SpotifyLibraryState extends State<LibraryPage> {
  @override
  Material build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildHeadImageTitleAndButtons(context), //Kitaplığın
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: buildElevatedButtons(context),
                )), //Çalma listeleri-Albümler-İndirilenler
            buildRecentlyPlayedInfo(), //Yakınlarda Çalınanlar
            Column(children: buildSongList(context)),
            
          ],
        ),
      ),
    );
  }
}
