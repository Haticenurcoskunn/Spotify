import 'package:flutter/material.dart';
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
  
  @override
  Material build(BuildContext context) {
    return Material(
      child: Container(
          decoration: colorTransitionGrey(),
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
            children: [
     buildHeadTitleAndButtons(),
     buildCenterImage(),
     Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
         buildSubTitle('The Lumminers', 20,FontWeight.bold),
         buildSubTitle('Angela', 12,FontWeight.normal)
       ],
     ),
     
            ],
          )),
    );
  }
}
