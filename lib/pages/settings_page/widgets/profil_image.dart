import 'package:flutter/material.dart';
import 'package:spotify/pages/library_page/widgets/head_image_title_and_buttons.dart';

ListTile profilImageRow() {
    return ListTile(
        leading:profilImage(40) ,
        title: Text('Elephant',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
        subtitle: Text('Profili Görüntüle',style: TextStyle(color: Colors.grey,fontSize: 17)),
        trailing: IconButton(icon:Icon(Icons.chevron_right,color: Colors.grey),onPressed: (){})
       );
  }