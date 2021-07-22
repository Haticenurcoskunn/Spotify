import 'package:flutter/material.dart';
import 'package:spotify/pages/search_page/search_page.dart';
import 'package:spotify/pages/library_page/library_page.dart';
import 'package:spotify/pages/home_page/home_page.dart';
import 'package:spotify/utils/custom_widgets/custom_played_song_bottom_container.dart';

class Spotify extends StatefulWidget {
  @override
  SpotifyState createState() => SpotifyState();
}

class SpotifyState extends State<Spotify> {
  int currentTabIndex = 0;

  List<Widget> tabs = [
    HomePage(),
    SearchPage(),
    LibraryPage(),
  ];

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tabs[currentTabIndex],
          bottomPlayedSongInfo(context),
        ],
      ),
     
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        currentIndex: currentTabIndex,
        backgroundColor: Colors.grey[850],
        items: [buildBottomNavigatorBarItem('Ana Sayfa', Icons.home), buildBottomNavigatorBarItem('Ara', Icons.search), buildBottomNavigatorBarItem('Kitaplığın', Icons.book)],
      ),
    );
  }
}

BottomNavigationBarItem buildBottomNavigatorBarItem(
  String bottomTitle,
  IconData bottomIcon,
) {
  return BottomNavigationBarItem(
    icon: Icon(
      bottomIcon,
    ),
    label: bottomTitle,
  );
}
