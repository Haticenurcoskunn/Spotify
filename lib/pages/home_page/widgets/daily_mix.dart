import 'package:flutter/material.dart';
import 'package:spotify/pages/home_page/source/daily_mix_list.dart';
Padding buildDailyMixInfo(BuildContext context) {
   ScrollController scrollController = ScrollController(
    initialScrollOffset: 8, // or whatever offset you wish
    keepScrollOffset: true);
    return Padding(
      padding: const EdgeInsets.only(left:10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4,
        child: ListView(
          physics: ClampingScrollPhysics(),
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          children: buildDailyMixList(context),
        ),
      ),
    );
  }