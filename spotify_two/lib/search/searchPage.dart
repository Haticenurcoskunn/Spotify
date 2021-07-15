import 'package:flutter/material.dart';
import 'package:spotify/my_general_widget.dart/titles.dart';
import 'package:spotify/search/imageList.dart';
import 'package:spotify/search/searchButton.dart';



class SpotifySearchPage extends StatefulWidget {
  @override
  _SpotifySearchPageState createState() => _SpotifySearchPageState();
}

class _SpotifySearchPageState extends State<SpotifySearchPage> {
  String searchTopTitle = 'Ara';
  String searchButtonTitle = "Sanatçılar , şarkılar veya podcast'ler  ";
  String searchSubTitle = 'En çok dinlediğin türler';
  String searchSubTitleTwo = 'Hepsine Göz At';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSubTitle(searchTopTitle,50),//Ara
            buildSearchButton(context,searchButtonTitle),
            buildSubTitle(searchSubTitle,25),//En çok dinlediğin türler
            buildMusicTypeGridView(context),
          
          ],
        ),
      ),
    );
  }

  GridView buildMusicTypeGridView(BuildContext context) {
    return GridView.count(
            shrinkWrap: true,
            physics:
                NeverScrollableScrollPhysics(), //içinde kaymamasını sağlar.
            crossAxisCount: 2,
            childAspectRatio: 1,
            reverse: false,
            scrollDirection: Axis.vertical,
            mainAxisSpacing: 10,
            children: bigImageList(context),
          );
  }
 
}

