import 'package:flutter/material.dart';
import 'package:spotify/utils/custom_widgets/titles.dart';

Row buildRecentlyPlayedInfo() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.swap_vert),color: Colors.white,),
            buildSubTitle('Yakınlarda Çalınanlar', 15,FontWeight.bold)]
          ),
                   IconButton(onPressed: (){}, icon: Icon(Icons.border_all),color: Colors.white,),
        ],);
  }