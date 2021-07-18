import 'package:flutter/material.dart';
import 'package:spotify/spotifyPlaylist/custom_played_song_bottom_container.dart';

Row topButtons(IconData icon,IconData iconSecond) {
    return Row(
    children: [
      buildIconButton(
        icon,
        onPressed: (){},
      ),
      buildIconButton(
      iconSecond,
        onPressed: () {}
      ),
    ],
  );
  }
