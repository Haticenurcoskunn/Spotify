import 'package:flutter/material.dart';
import 'package:spotify/utils/custom_widgets/titles.dart';
import 'package:spotify/pages/search_page/widgets/music_type_image.dart';
import 'package:spotify/pages/search_page/widgets/search_button.dart';



class SearchPage extends StatefulWidget {
  @override
  _SpotifySearchPageState createState() => _SpotifySearchPageState();
}

class _SpotifySearchPageState extends State<SearchPage> {
  String searchTopTitle = 'Ara';
  String searchButtonTitle = "Sanatçılar , şarkılar veya podcast'ler  ";
  String searchSubTitle = 'En çok dinlediğin türler';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSubTitle(searchTopTitle,50,FontWeight.bold),//Ara
            buildSearchButton(context,searchButtonTitle),
            buildSubTitle(searchSubTitle,25,FontWeight.bold),//En çok dinlediğin türler
            buildMusicTypeImage(context),
          ],
        ),
      ),
    );
  }

  
 
}

