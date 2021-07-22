 import 'package:flutter/material.dart';
import 'package:spotify/utils/custom_widgets/dowload_switch.dart';
import 'package:spotify/pages/settings_page/widgets/profil_image.dart';

Column titleColumn() {
    return Column(children: [
       profilImageRow(),
       listTileForTitle(title:'Hesap',subtitle: ''),
       listTileForTitle(title: 'E-posta', subtitle: 'elephant@gmail.com'),
       listTileForTitle(title:'Data Saver',subtitle: ''),
       listTileWithTrailing(title: 'Audio Quality', subtitle: "Sets your audio quality to low(equivalent to \n24kbit/s)"),
      listTileForTitle(title:'Video Podcasts',subtitle: ''),
      listTileWithTrailing(title: 'Download audio only', subtitle: 'Save video podscats as audio only'),
      listTileForTitle(title:' Çarpraz geçiş', subtitle:'Şarkılar arasında çarpraz geçiş sağlar'),
   ]);
  }

    ListTile listTileWithTrailing({required String title,required String subtitle}) {
    return ListTile(
       title: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
       ),
       subtitle: Text(subtitle,style: TextStyle(color: Colors.grey)),
       trailing:DowloadSwitch(),
     );
  }

  ListTile listTileForTitle({required String title,required String subtitle}) {
    return ListTile(
         title: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
         ),
         subtitle: Text(subtitle,style: TextStyle(color: Colors.grey)),
       );
  }