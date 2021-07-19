import 'package:flutter/material.dart';
import 'package:spotify/my_general_widget.dart/elevated_button.dart';


Container turkishPopImageContainer(BuildContext context) {
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
              playlistName(),
              playlistInfo(),
            ],
          ),
          Spacer(),
          Column(
            children: [
              playMixButton(),
              buildElevatedButton(context,'Şarkı Ekle'),
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
  
  Container playlistName() {
   String imageTitle = 'Ders Çalışırken';
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Text(
        imageTitle,
        style: TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }

  Container playlistInfo() {
     String imageSubtitle = 'Oluşturan PLU . 10 TAKİPÇİ';
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: Text(
        imageSubtitle,
        style: TextStyle(fontSize: 10, color: Colors.white),
      ),
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