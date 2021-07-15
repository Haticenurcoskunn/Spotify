import 'package:flutter/material.dart';

ListTile customSongListTile(String image, String listTitle, Color mainColor,
    String listSubtitle, MaterialColor secondaryColor) {
  return ListTile(
    leading: Image.network(
      image,
      fit: BoxFit.scaleDown,
    ),
    title: Text(
      listTitle,
      style: TextStyle(color: mainColor),
    ),
    subtitle: Row(
      children: [
        Icon(Icons.arrow_circle_down_rounded,color: Colors.green[600]),
        Text(
          listSubtitle,
          style: TextStyle(
            color: secondaryColor,
          ),
        ),
      ],
    ),
    trailing: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.more_vert,
        color: secondaryColor,
      ),
    ),
  );
}
