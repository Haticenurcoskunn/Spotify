import 'package:flutter/material.dart';
import 'package:spotify/pages/search_page/source/music_type_image_list.dart';

GridView buildMusicTypeImage(BuildContext context) {
    return GridView.count(
            shrinkWrap: true,
            physics:
            NeverScrollableScrollPhysics(), //içinde kaymamasını sağlar.
            crossAxisCount: 2,
            childAspectRatio: 1.1,
            reverse: false,
            scrollDirection: Axis.vertical,
            mainAxisSpacing: 10,
            children: musicTypeImageList(context),
          );
  }