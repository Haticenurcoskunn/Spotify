
import 'package:flutter/material.dart';
import 'package:spotify/pages/library_page/library_page.dart';
import 'package:spotify/utils/custom_widgets/custom_icon_button.dart';
import 'package:spotify/utils/custom_widgets/titles.dart';
import 'package:spotify/utils/custom_widgets/top_row_buttons.dart';
class  HeadTextAndButtons extends StatefulWidget {
  const  HeadTextAndButtons({ Key? key }) : super(key: key);

  @override
  _PlayListBackButtonState createState() => _PlayListBackButtonState();
}

class _PlayListBackButtonState extends State< HeadTextAndButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      playlistBackButton(context,Icons.arrow_back_rounded),
      Padding(
        padding: EdgeInsets.only(left:40),
        child: buildSubTitle('Ders Çalışırken', 17,FontWeight.bold)),
      rightTopTwoButtons(Icons.person_add_alt_1_outlined,Icons.playlist_play, (){})
    ],
  );
  }
}

Widget playlistBackButton(BuildContext context, IconData icon) {
  return buildIconButton(icon, onPressed: () {
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LibraryPage()),
  );
  });
}

