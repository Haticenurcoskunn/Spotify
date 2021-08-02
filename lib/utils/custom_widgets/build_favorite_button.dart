import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/pages/playlist_page/controllers/playList_controller.dart';
import 'package:spotify/utils/custom_widgets/custom_icon_button.dart';

Obx buildFavoriteButton(PlayListController playListController) {
  return Obx(
    () => buildIconButton(
      playListController.isFav.value ? Icons.favorite : Icons.favorite_border,
      color: playListController.isFav.value ? Colors.green : Colors.white,
      onPressed: () {
        playListController.changeFavState();
      },
    ),
  );
}
