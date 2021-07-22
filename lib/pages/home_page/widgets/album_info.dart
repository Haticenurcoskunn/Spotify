import 'package:flutter/material.dart';
import 'package:spotify/pages/home_page/source/album_image_list.dart';

GridView buildAlbumInfo(BuildContext context) {
  return GridView.count(
    shrinkWrap: true,
    physics: ClampingScrollPhysics(),
    crossAxisCount: 2,
    childAspectRatio: 3 / 1,
    reverse: false,
    scrollDirection: Axis.vertical,
    mainAxisSpacing: 10,
    children: buildAbumList(context),
  );}