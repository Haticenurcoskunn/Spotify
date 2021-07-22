import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:spotify/pages/settings_page/widgets/close_slider_row.dart';
import 'package:spotify/pages/settings_page/widgets/titles_column.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({ Key? key }) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       appBar: AppBar(
          backgroundColor:Colors.black,
          centerTitle: true, title: Text('Ayarlar'),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
          titleColumn(),
          CloseSliderRow(),
          listTileForTitle(title: 'Depolama', subtitle: ''),
           Column(
             children: [
               LinearPercentIndicator(
                    width: 300.0,
                    lineHeight: 9.0,
                    percent: 0.3,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.blue,
                  ),
                buildStorageListTile(Colors.blue,'Diğer Uygulamalar'),
                buildStorageListTile(Colors.green,'İndirilenler'),
                buildStorageListTile(Colors.white,'Önbellek'),
                buildStorageListTile(Colors.grey,'Free'),
             ],
           ),

        ],),
      ) ,
    );
  }

  ListTile buildStorageListTile(Color color,String title ) => ListTile(leading: Icon(Icons.brightness_1,color: color,),title:Text(title,style: TextStyle(color: Colors.white),),
      );

 

 




}
