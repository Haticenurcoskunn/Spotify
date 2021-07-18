import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/playSongPage/page.dart';
import 'package:spotify/spotifyPlaylist/playList_controller.dart';


GestureDetector bottomPlayedSongContainer(BuildContext context) {
  var playListController = Get.put(PlayListController());
  //ListTile
  return GestureDetector(
    onTap:(){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PlaySongPage()),
  );} ,
    child: Container(
      height: MediaQuery.of(context).size.height / 12,
      color: Colors.grey[800],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Image.network(
                  playListController.onTapSong.value,
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        playListController.onTapTitle.value,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Obx(
                      () => Text(playListController.onTapSubtitle.value,
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Obx(
                () => buildIconButton(
                  playListController.isFav.value
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: playListController.isFav.value
                      ? Colors.green
                      : Colors.white,
                  onPressed: () {
                    playListController.changeFavState();
                  },
                ),
              ),
              Obx(
                () => buildIconButton(
                  playListController.isPlaying.value
                      ? Icons.play_arrow
                      : Icons.pause,
                  onPressed: () {
                    playListController.changePlayingState();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

//daha rahat parametre vermek için sırası önemli değil ,parantez dışındaki verilmek zorunda ama isimlendirilmiş değil ama çağırıken icondata diyemezsssin
buildIconButton(IconData iconData,
    {Color color = Colors.white, required Function() onPressed}) {
  return IconButton(onPressed: onPressed, icon: Icon(iconData), color: color);
}
