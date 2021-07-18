import 'package:flutter/material.dart';


class PlaySongPage extends StatefulWidget {
  const PlaySongPage({ Key? key }) : super(key: key);

  @override
  _PlaySongPageState createState() => _PlaySongPageState();
}

class _PlaySongPageState extends State<PlaySongPage> {
  @override
  Material build(BuildContext context) {
    return Material(
      child:     
       Container(
        decoration:BoxDecoration(
          image:  DecorationImage(image:NetworkImage('https://i.pinimg.com/originals/ac/1a/31/ac1a3107dd70b4b119a50103d1130447.jpg')),
      ),
       child:Column(
       children: [
         ListTile(leading: IconButton(onPressed:(){} ,icon:Icon(Icons.expand_more,color: Colors.white,)),
         title:Text('\nBaşlangıç Sayfasından Çalınıyor',style:TextStyle(color:Colors.white)),subtitle: Text('                       Ders',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
         trailing: IconButton(onPressed: (){},icon:Icon(Icons.more_vert,color: Colors.white,)),
         ),
       ],
      )),
    );
  }
}