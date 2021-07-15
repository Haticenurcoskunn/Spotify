 import 'package:flutter/material.dart';

Container buildPopularWithListenersContainer(BuildContext context) {
    return Container(
           height: MediaQuery.of(context).size.height / 10,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Expanded(
                 child: Image.network(
                     'https://mediacdns.karnaval.com/media/album_media/32211/albumcover_400x400/cover_32211.jpg?v=160218113324'),
               ),
               Padding(
                 padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                 child: Text(
                   "Dinleyiciler Arasında Popüler \n SELAMLAR",
                   style: TextStyle(
                       fontSize: 15,
                       color: Colors.white,
                       fontWeight: FontWeight.bold),
                 ),
               ),
             ],
           ),
         );
  }
