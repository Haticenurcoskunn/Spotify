import 'package:flutter/material.dart';

Padding customSongStructure(String image, String listTitle, Color mainColor,
    String listSubtitle, MaterialColor secondaryColor) {
  return Padding(
    padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
    child: ListTile(
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
          Icon(Icons.arrow_circle_down_rounded, color: Colors.green[600]),
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
    ),
  );
}
