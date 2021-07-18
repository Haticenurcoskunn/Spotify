 import 'package:flutter/material.dart';

class DowloadSwitch extends StatefulWidget {
  const DowloadSwitch({ Key? key }) : super(key: key);

  @override
  _DowloadSwitchState createState() => _DowloadSwitchState();
}
class _DowloadSwitchState extends State<DowloadSwitch> {
  bool isSwitched = false;
  @override
  Switch build(BuildContext context) {
   return Switch(
     activeColor: Colors.green,
     value: isSwitched,
     onChanged: (value) {
       setState(
         () {
           isSwitched = value;
         },
       );
     },
   );
  
  }
}