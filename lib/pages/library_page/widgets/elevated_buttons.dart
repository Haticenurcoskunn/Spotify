 import 'package:flutter/material.dart';
import 'package:spotify/utils/custom_widgets/elevated_button.dart';

Row buildElevatedButtons(BuildContext context){
    return Row(
    //   mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        elevatedButton(context, 'Çalma Listeleri'),
        elevatedButton(context, 'Albümler'),
        elevatedButton(context, 'İndirilenler'),
        elevatedButton(context, "Podcast'ler"),
   ]);}