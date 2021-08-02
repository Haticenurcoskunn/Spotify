import 'package:flutter/material.dart';
import 'package:spotify/utils/custom_widgets/elevated_button.dart';

Padding buildElevatedButtons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      elevatedButton(context, 'Çalma Listeleri'),
      elevatedButton(context, 'Albümler'),
      elevatedButton(context, 'İndirilenler'),
      elevatedButton(context, "Podcast'ler"),
    ]),
  );
}
