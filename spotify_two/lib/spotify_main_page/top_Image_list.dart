import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



var songLink = <String>[
  'https://mediacdns.karnaval.com/media/album_media/32211/albumcover_400x400/cover_32211.jpg?v=160218113324',
  'https://upload.wikimedia.org/wikipedia/tr/thumb/6/69/Vemfo.jpg/375px-Vemfo.jpg',
  'https://mediacdns.karnaval.com/media/album_media/32211/albumcover_400x400/cover_32211.jpg?v=160218113324',
  'https://images.genius.com/9ea9f98878e73de89768e66ca2acea5f.500x500x1.jpg',
  'https://mediacdns.karnaval.com/media/album_media/32211/albumcover_400x400/cover_32211.jpg?v=160218113324',
  'https://images.genius.com/9ea9f98878e73de89768e66ca2acea5f.500x500x1.jpg'
];

var singerName = <String>[
  'yalın',
  'Mfö',
  'Yalın',
  'Can Ozan',
   'Yalın',
  'Can Ozan',
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
        print("tık tık");
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 5,
          left: 10,
        ),
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
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
          color: Colors.grey[700],
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
    );
  }
    
