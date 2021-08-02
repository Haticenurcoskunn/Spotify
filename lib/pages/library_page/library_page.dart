import 'package:flutter/material.dart';
import 'package:spotify/pages/library_page/source/library_list.dart';
import 'package:spotify/pages/library_page/widgets/elevated_buttons.dart';
import 'package:spotify/pages/library_page/widgets/recently_played_row.dart';
import 'package:spotify/pages/library_page/widgets/head_image_title_and_buttons.dart';
import 'package:spotify/pages/playlist_page/playlist_page.dart';

class LibraryPage extends StatefulWidget {
  @override
  _SpotifyLibraryState createState() => _SpotifyLibraryState();
}

class _SpotifyLibraryState extends State<LibraryPage> {
  bool condition = true;
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: condition == true
                ? SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
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
                          Column(children: buildLibrarySongList(context)),
                        ],
                      ),
                    ),
                  ) : SpotifyPlayList()));
  }
}
