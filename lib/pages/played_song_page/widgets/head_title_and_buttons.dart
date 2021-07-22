  import 'package:flutter/material.dart';

ListTile buildHeadTitleAndButtons() {
    return ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  )),
              title: Text('\nBaşlangıç Sayfasından Çalınıyor', style: TextStyle(color: Colors.white)),
              subtitle: Text('                       Ders', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )),
            );
  }