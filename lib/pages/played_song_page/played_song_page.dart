import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/pages/playlist_page/controllers/playList_controller.dart';
import 'package:spotify/utils/custom_widgets/build_favorite_button.dart';
import 'package:spotify/utils/custom_widgets/custom_icon_button.dart';
import 'package:spotify/utils/custom_widgets/titles.dart';
import 'package:spotify/pages/played_song_page/widgets/center_image.dart';
import 'package:spotify/pages/played_song_page/widgets/head_title_and_buttons.dart';
import 'package:spotify/utils/page_decoration/color_transition_grey.dart';

class PlayedSongPage extends StatefulWidget {
  const PlayedSongPage({Key? key}) : super(key: key);

  @override
  _PlayedSongPageState createState() => _PlayedSongPageState();
}

class _PlayedSongPageState extends State<PlayedSongPage> {
  bool _isPlaying = false;
  var playListController = Get.put(PlayListController());

  @override
  SafeArea build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: colorTransitionGrey(),
            child: Column(
              children: [
                buildHeadTitleAndButtons(),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  child: buildCenterImage(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildSubTitle('The Lumminers', 25, FontWeight.bold),
                            buildSubTitle('Angela', 16, FontWeight.normal),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 3),
                          child: buildFavoriteButton(playListController),
                        )
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(Icons.lens),
                      onPressed: () {},
                      iconSize: 20,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20),
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width * 9 / 10,
                      height: MediaQuery.of(context).size.height / 150,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.width / 15,
                      left: MediaQuery.of(context).size.width / 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildIconButton(Icons.shuffle, onPressed: () {}),
                      buildIconButton(Icons.fast_rewind, onPressed: () {}),
                      IconButton(
                          color: Colors.white,
                          icon: _isPlaying
                              ? Icon(Icons.pause_circle_filled)
                              : Icon(Icons.play_circle_outline),
                          iconSize: 70,
                          onPressed: () {
                            _isPlaying = !_isPlaying;
                          }),
                      buildIconButton(Icons.fast_forward, onPressed: () {}),
                      buildIconButton(Icons.cached, onPressed: () {}),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
