import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify/my_general_widget.dart/titles.dart';
import 'package:spotify/settings/settings_page.dart';
import 'package:spotify/spotifyPlaylist/custom_played_song_bottom_container.dart';
import 'package:spotify/spotify_main_page/big_image_list.dart';
import 'package:spotify/spotify_main_page/color_transition_red.dart';
import 'package:spotify/spotify_main_page/popular_container.dart';
import 'package:spotify/spotify_main_page/top_Image_list.dart';
class SpotifyMainPage extends StatefulWidget {
  @override
  _SpotifyMainPageState createState() => _SpotifyMainPageState();
}

class _SpotifyMainPageState extends State<SpotifyMainPage>
    with TickerProviderStateMixin {
  ScrollController scrollController = ScrollController(
    initialScrollOffset: 8, // or whatever offset you wish
    keepScrollOffset: true,
  );
  String goodEveningTitle = 'İyi akşamlar';
  String recentlyPlayed = 'Yakınlarda Çalınanlar';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: buildColorTransition(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildSubTitle(goodEveningTitle, 24), //İYİ AKŞAMLAR
                  rightTopButton(context),
                ],
              ),
              buildAlbumGridView(context),
              buildPopularWithListenersContainer(
                  context), //Dinleyiciler arasında popüler
              buildSubTitle(recentlyPlayed, 20), //YAKINLARDA ÇALINANLAR
              buildDailyMixListView(context),
              buildDailyMixListView(context),
            ],
          ),
        ),
      ),
    );
  }

  Row rightTopButton(BuildContext context) {
    return Row(
    children: [
      buildIconButton(
        Icons.restore
        ,
        onPressed: (){},
      ),
      buildIconButton(
       Icons.settings,
        onPressed: () {
            Navigator.push(
        context,
      MaterialPageRoute(builder: (context) => SettingsPage()),
);
        }
      ),
    ],
  );
  }

  SizedBox buildDailyMixListView(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: ListView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        children: buildDailyMixList(context),
      ),
    );
  }
}

GridView buildAlbumGridView(BuildContext context) {
  return GridView.count(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    childAspectRatio: 3 / 1,
    reverse: false,
    scrollDirection: Axis.vertical,
    mainAxisSpacing: 10,
    children: buildAbumList(context),
  );
}
