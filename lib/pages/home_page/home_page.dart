import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify/pages/settings_page/settings_page.dart';
import 'package:spotify/utils/custom_widgets/titles.dart';
import 'package:spotify/pages/home_page/widgets/album_info.dart';
import 'package:spotify/pages/home_page/widgets/daily_mix.dart';
import 'package:spotify/utils/custom_widgets/top_row_buttons.dart';
import 'package:spotify/pages/home_page/widgets/popular_container.dart';

class HomePage extends StatefulWidget {
  @override
  _SpotifyMainPageState createState() => _SpotifyMainPageState();
}

class _SpotifyMainPageState extends State<HomePage> with TickerProviderStateMixin {
 
  String goodEveningTitle = 'İyi akşamlar';
  String recentlyPlayed = 'Yakınlarda Çalınanlar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildSubTitle(goodEveningTitle, 24,FontWeight.bold), //İYİ AKŞAMLAR
                      rightTopTwoButtons(Icons.history ,Icons.settings,(){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
                      );})
                    ],
                  ),
                  buildAlbumInfo(context),
                  buildPopularWithListeners(context), //Dinleyiciler arasında popüler
                  buildSubTitle(recentlyPlayed, 20,FontWeight.bold), //YAKINLARDA ÇALINANLAR
                  buildDailyMixInfo(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


