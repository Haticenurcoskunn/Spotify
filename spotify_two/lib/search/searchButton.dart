 import 'package:flutter/material.dart';

ConstrainedBox buildSearchButton(BuildContext context, String buttonTitle) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
          height: MediaQuery.of(context).size.height / 11),
      child: ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(EdgeInsets.all(10)),
        ),
        label: Text(
          buttonTitle,
          style: TextStyle(color: Colors.grey[800], fontSize: 20),
        ),
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }