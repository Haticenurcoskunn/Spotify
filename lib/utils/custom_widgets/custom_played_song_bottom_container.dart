import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/pages/playlist_page/controllers/playList_controller.dart';
import 'package:spotify/pages/played_song_page/played_song_page.dart';
import 'package:spotify/utils/custom_widgets/build_favorite_button.dart';
import 'custom_icon_button.dart';

GestureDetector bottomPlayedSongInfo(BuildContext context) {
  var playListController = Get.put(PlayListController());
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PlayedSongPage()),
      );
    },
    child: Container(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[800],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Image.network(
                    playListController.onTapSong.value,
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          playListController.onTapTitle.value,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Obx(
                        () => Text(playListController.onTapSubtitle.value,
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              buildFavoriteButton(playListController),
              Obx(
                () => buildIconButton(
                  playListController.isPlaying.value
                      ? Icons.play_arrow
                      : Icons.pause,
                  onPressed: () {
                    playListController.changePlayingState();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}


