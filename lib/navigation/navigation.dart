import 'package:flutter/material.dart';
import 'package:spotify/search/searchPage.dart';
import 'package:spotify/spotifyLibrary/libraryPage.dart';
import 'package:spotify/spotify_main_page/mainPage.dart';

class SpotifyNavigation extends StatefulWidget {
  @override
  _TabsDemoScreenState createState() => _TabsDemoScreenState();
}

class _TabsDemoScreenState extends State<SpotifyNavigation> {
   int currentTabIndex = 0;

  List<Widget>tabs=[
  SpotifyMainPage(),
  SpotifySearchPage(),
  SpotifyLibrary(),
  ];

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      currentIndex: currentTabIndex,
      backgroundColor: Colors.grey[800],
      items: [
        buildBottomNavigatorBarItem('Ana Sayfa', Icons.home),
        buildBottomNavigatorBarItem('Ara', Icons.search),
        buildBottomNavigatorBarItem('Kitaplığın', Icons.book)
      ],
    ),
    );
  }
}
BottomNavigationBarItem buildBottomNavigatorBarItem(
  String bottomTitle,
  IconData bottomIcon,

) {
  return BottomNavigationBarItem(
    icon: Icon(bottomIcon, ),
    label: bottomTitle,
  );
}
