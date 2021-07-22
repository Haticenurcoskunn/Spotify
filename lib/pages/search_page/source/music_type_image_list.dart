import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


var songLink = <String>[
 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1xTdpMl0ZtA15zo028r3psfx-Q5muzho_sw&usqp=CAU' ,
 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6N8pcNSsoIUCuf3FBmCBo_vFK_PqHqEWUFA&usqp=CAU' ,
 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg1QhMTcLQI7maHWI5-npI4i0FGba8jYlX8Q&usqp=CAU' ,
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRxbR4qCZu2EL4PdhhU6KHgd5oauV5cmKSOA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0_yWe9P1HygNwSSBLWK7cmhgunAbJ8BA8xQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoGU_6l5T6QZa3o1BumoP9XIlCW8yJ7XDYcw&usqp=CAU'
];

List<Widget> musicTypeImageList(BuildContext context) {
  var widgetList = <Widget>[];

  

  for (var i = 0; i < songLink.length; i++) {
    widgetList.add(buildMusicTypeImageList(
             songLink[i]));
      }
    
      return widgetList;
    }

Widget buildMusicTypeImageList(String songLink) {
  return 
  ClipRect(
  child: Container(
    child: Align(
      alignment: Alignment.center,
        widthFactor: 0.4,
        heightFactor: 1.0,
        child: Image.network(songLink
        ),
    ),
  ),
);
}






    
/*Container buildMusicTypeImageList(String link) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(fit:BoxFit.cover, image: NetworkImage(link),),
      color: Colors.grey[700],
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
  );
}*/

