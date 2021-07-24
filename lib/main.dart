import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:spotify/pages/played_song_page/played_song_page.dart';
import 'package:spotify/pages/settings_page/settings_page.dart';


void main(){
  runApp(
    myHomePage(),
  );
}

MaterialApp myHomePage() {
  return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        canvasColor: Colors.black,
      ),
      home: SafeArea(child:SettingsPage()));
}