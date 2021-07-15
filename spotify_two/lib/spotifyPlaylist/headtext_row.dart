import 'package:flutter/material.dart';
import 'package:spotify/spotifyPlaylist/custom_played_song_bottom_container.dart';
import 'package:spotify/spotifyPlaylist/top_row_button.dart';

Row topHeadTextRow() {
  
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        playlistBackButton(Icons.arrow_back_rounded),
        playlistBottomTitle(),
        topButtons(
          Icons.person_add_alt_1_outlined,
          Icons.playlist_play,
        )
      ],
    );
  }
   Widget playlistBackButton(IconData icon) {
    return buildIconButton(icon, onPressed: () {});
  }

  Text playlistBottomTitle() {
    String imageTitle = 'Ders Çalışırken';
    return Text(
      imageTitle,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
