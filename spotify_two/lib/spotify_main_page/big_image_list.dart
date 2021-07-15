import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

var image = <String>[
  'https://dailymix-images.scdn.co/v2/img/c72862243d93bbe27e90d83111fb1730701b02be/2/en/large',
  'https://dailymix-images.scdn.co/v2/img/ed7b83c3c4e13132857b54bdda80527a1301d95b/6/en/large',
  'https://dailymix-images.scdn.co/v2/img/ab67616d0000b27312e4ebca4e7899046909b14b/1/en/large',
  'https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebf949c83f495f5706024700bf/1/en/large',
];

var name = <String>[
  'Sertab Erener',
  'Barış Manço',
  'Harun Kolçak',
  'Teoman',
];

List<Widget> buildDailyMixList(BuildContext context) {
  var bigImageList = <Widget>[];

  for (var i = 0; i < image.length; i++) {
    bigImageList.add(imageContainer(context, image[i], name[i]));
    bigImageList.add(imageContainer(context, image[i], name[i]));
  }

  return bigImageList;
}

Padding imageContainer(
    BuildContext context, String imageLink, String title) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Container(
      height: MediaQuery.of(context).size.height / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            imageLink,
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width / 4,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ],
      ),
    ),
  );
}
