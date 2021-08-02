import 'package:flutter/material.dart';
import 'package:spotify/pages/playlist_page/playlist_page.dart';
import 'package:spotify/pages/playlist_page/widgets/custom_song_structure.dart.dart';

GestureDetector buildLibrarySongInfo(BuildContext context, double height, String image, String listTitle, String listSubtitle) {
  var mainColor = Colors.white;
  var secondaryColor = Colors.grey;
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SpotifyPlayList(),
        ),
      );
    },
    child: customSongStructure(image, listTitle, mainColor, listSubtitle, secondaryColor),
  );
}
