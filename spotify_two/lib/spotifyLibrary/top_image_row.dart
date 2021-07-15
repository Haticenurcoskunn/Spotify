import 'package:flutter/material.dart';
import 'package:spotify/my_general_widget.dart/titles.dart';
import 'package:spotify/spotifyPlaylist/top_row_button.dart';


Row buildTopImageRow() {
   String topTitle = 'Kitaplığın';
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB3p-z00yk3mRWGygKba9UUfOLAWeSBr8MQQ&usqp=CAU',
              ),
            ),
            buildSubTitle(topTitle, 30),
          ]),
        topButtons(Icons.search, Icons.add)]
    );
  }