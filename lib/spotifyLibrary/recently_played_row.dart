import 'package:flutter/material.dart';
import 'package:spotify/my_general_widget.dart/titles.dart';

Row buildRecentlyPlayedRow() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.swap_vert),color: Colors.white,),
            buildSubTitle('Yakınlarda Çalınanlar', 15)]
          ),
                   IconButton(onPressed: (){}, icon: Icon(Icons.border_all),color: Colors.white,),
        ],);
  }