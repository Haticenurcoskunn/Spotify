import 'package:flutter/material.dart';
import 'package:spotify/utils/custom_widgets/elevated_button.dart';
import 'package:spotify/utils/custom_widgets/titles.dart';


Container turkishPopInfo(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 3 / 7,
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: playlistImage(
              'https://instyle.igte.ch/Content/images/Haberler/Orjinal/sanatcilarin-sirlari-turkiyenin-en-buyuk-spotify-listesi-turkce-popta-87377-9042021113446.jpg',
              context,
            ),
          ),
          Spacer(),
          Column(
            children: [
              buildSubTitle('Ders Çalışırken', 15,FontWeight.normal),
              buildSubTitle('Oluşturan PLU .10 Takipçi', 12, FontWeight.normal)
            ],
          ),
          Spacer(),
          Column(
            children: [
              playMixButton(),
              elevatedButton(context,'Şarkı Ekle'),
            ],
          ),
        ],
      ),
    );
  }

   Image playlistImage(String imageUrl, BuildContext context) {
    return Image.network(
      imageUrl,
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 4,
    );
  }
  Container playMixButton() {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          primary: Colors.green[700],
        ),
        child: Text(
          'Karışık Çal',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }