import 'package:get/get.dart';

class PlayListController extends GetxController {
  var onTapSong =
      'https://www.miyhav.com/icerik/uploads/2019/04/civciv-hakkinda-bilgiler-3.jpg'
          .obs;
  var onTapTitle = 'selam'.obs;
  var onTapSubtitle = 'hello'.obs;
  var isPlaying = false.obs;
  var isFav = false.obs;

  void changeImage(String image) {
    onTapSong.value = image;
  }

  void changeTitle(String title) {
    onTapTitle.value = title;
  }

  void changeSubtitle(String subtitle) {
    onTapSubtitle.value = subtitle;
  }

  void changePlayingState() {
    isPlaying.value = !isPlaying.value;
  }

  void changeFavState() {
    isFav.value = !isFav.value;
  }
}
