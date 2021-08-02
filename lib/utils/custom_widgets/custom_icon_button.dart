import 'package:flutter/material.dart';

//daha rahat parametre vermek için sırası önemli değil ,parantez dışındaki verilmek zorunda ama isimlendirilmiş değil ama çağırıken icondata diyemezsssin
buildIconButton(IconData iconData,
    {Color color = Colors.white,
    double iconSize = 30, required Function() onPressed}) {
  return IconButton(
      onPressed: onPressed, icon: Icon(iconData), iconSize: iconSize, color: color);
}
