import 'package:flutter/cupertino.dart';
import 'package:spotify/spotifyLibrary/library_list_build_container.dart';

var imageList = <String>[
  'https://seeded-session-images.scdn.co/v1/img/artist/1mpOD8ZwHnbsryIuXWq0R1/en',
  'https://seeded-session-images.scdn.co/v1/img/artist/2AWUCT9xtcvkjpFq1ZgpPj/en',
  'https://seeded-session-images.scdn.co/v1/img/artist/5ir9ylX51js6ukzBp2hvVf/en',
  'https://seeded-session-images.scdn.co/v1/img/artist/7MZj0XxqxlCZPj6JsMQq0Z/en',
  'https://seeded-session-images.scdn.co/v1/img/artist/7k6KVFItaU7pcBvL6poIi9/en',
  'https://seeded-session-images.scdn.co/v1/img/artist/5sO5N5i0tjAdKdtqWAKgLR/en',
'https://seeded-session-images.scdn.co/v1/img/artist/7gobcoscOfsY0nOeqqFzvU/en',
'https://seeded-session-images.scdn.co/v1/img/artist/2AWUCT9xtcvkjpFq1ZgpPj/en',
  'https://seeded-session-images.scdn.co/v1/img/artist/5ir9ylX51js6ukzBp2hvVf/en',
];

var singerList = <String>[
  'Zeynep Bastık',
  'Cem Adrian',
  'Emre Aydın',
  'Cem Adrian',
  'Emre Aydın',
  'Feridun Düzağaç',
  'Yüzyüzeyken Konuşuruz',  
  'Feridun Düzağaç',
  'Yüzyüzeyken Konuşuruz'
];

var songNameList = <String>[
  'Zeynep Bastık',
  'Cem Adrian',
  'Emre Aydın',
  'Cem Adrian',
  'Emre Aydın',
  'Feridun Düzağaç',
  'Yüzyüzeyken Konuşuruz',
   'Feridun Düzağaç',
  'Yüzyüzeyken Konuşuruz',
];

List<Widget> buildSongList(BuildContext context) {
  var widgetList = <Widget>[];

  for (var i = 0; i < imageList.length ; i++) {
    widgetList.add(buildLibraryListContainer( context,MediaQuery.of(context).size.height / 14,
        imageList[i], singerList[i], songNameList[i]));
  }

  return widgetList;
}
