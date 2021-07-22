 import 'package:flutter/material.dart';

Padding buildPopularWithListeners(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:35.0,left:10,bottom:35),
      child: Container(
        color: Colors.grey[700],
             width:  MediaQuery.of(context).size.height / 2.3,
             height: MediaQuery.of(context).size.height / 10,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Image.network(
                     'https://mediacdns.karnaval.com/media/album_media/32211/albumcover_400x400/cover_32211.jpg?v=160218113324'),
                 Padding(
                   padding: const EdgeInsets.only(left:10),
                   child: Text(
                     "Dinleyiciler Arasında Popüler ",
                     style: TextStyle(
                         fontSize: 15,
                         color: Colors.white,
                         fontWeight: FontWeight.bold),
                   ),
                 ),
               ],
               
             ),
           ),
    );
  }
