
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var songLink = <String>[
  'https://mediacdns.karnaval.com/media/album_media/32211/albumcover_400x400/cover_32211.jpg?v=160218113324',
  'https://i.scdn.co/image/ab67616d0000b273690c8a1e18cebea2ecfebcd0',
  'https://i.scdn.co/image/ab67616d0000b273e37977f91bc2674ec3cc076d',
  'https://images.genius.com/9ea9f98878e73de89768e66ca2acea5f.500x500x1.jpg',
  'https://i.scdn.co/image/ab67616d0000b2734a55bde3a9ca9c2c68912956',
  'https://i.scdn.co/image/ab67616d0000b2737703a7d40c7a8b09f6bb63e0'
  
];

var singerName = <String>[
  'Yalın Albüm',
  'Duman Albüm',
  'Cem Adrian \n   Albüm',
  'Can Ozan \n   Albüm',
  'Kalben Albüm',
  'Stefan Andre \n   Albüm',
];


List<Widget> buildAbumList(BuildContext context) {

  
  var widgetList = <Widget>[];

  for (var i = 0; i < songLink.length; i++) {
    widgetList.add(buildTopImageContainer(
                 songLink[i], singerName[i]));
          }
        
          return widgetList;
        }


   GestureDetector buildTopImageContainer(String image, String text) {
    return GestureDetector(
      onTap: () {
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 5,
          left: 10,
        ),
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left:80,top:25),
              child: Text(
                text,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topLeft, //resim sola geldi
              image: NetworkImage(image)),
          color: Colors.grey[850],
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
    );
  }
    
