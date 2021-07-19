import 'package:flutter/material.dart';
import 'package:spotify/spotifyLibrary/top_image_row.dart';

ListTile profilImageRow() {
    return ListTile(
        leading:profilImage(40) ,
        title: Text('Elephant',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
        subtitle: Text('Profili Görüntüle',style: TextStyle(color: Colors.grey,fontSize: 17)),
        trailing: IconButton(icon:Icon(Icons.chevron_right,color: Colors.grey),onPressed: (){})
       );
  }