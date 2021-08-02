import 'package:flutter/material.dart';
import 'package:spotify/utils/custom_widgets/titles.dart';
import 'package:spotify/utils/custom_widgets/top_row_buttons.dart';

Row buildHeadImageTitleAndButtons(BuildContext context) {
  String topTitle = 'Kitaplığın';
  return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
      profilImage(30),
      buildSubTitle(topTitle, 30,FontWeight.bold),
    ]),
    rightTopTwoButtons(Icons.search, Icons.add,(){})
  ]);
}
CircleAvatar profilImage(double radius) {
  return CircleAvatar(
    radius: radius,
    backgroundImage: NetworkImage(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB3p-z00yk3mRWGygKba9UUfOLAWeSBr8MQQ&usqp=CAU',
    ),
  );
}
