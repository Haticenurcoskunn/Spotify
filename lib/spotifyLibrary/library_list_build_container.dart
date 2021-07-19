import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/pages/spotify_playlist_page/controllers/playList_controller.dart';
import 'package:spotify/pages/spotify_playlist_page/playlist_listTile.dart';
import 'package:spotify/pages/spotify_playlist_page/playlist_page.dart';

GestureDetector buildLibraryListContainer(BuildContext context, double height, String image, String listTitle, String listSubtitle) {
  var mainColor = Colors.white;
  var secondaryColor = Colors.grey;
  var playListController = Get.put(PlayListController());
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SpotifyPlayList(),
        ),
      );
      playListController.changeImage(image);
      playListController.changeTitle(listTitle);
      playListController.changeSubtitle(listSubtitle);
    },
    child: customSongListTile(image, listTitle, mainColor, listSubtitle, secondaryColor),
  );
}
