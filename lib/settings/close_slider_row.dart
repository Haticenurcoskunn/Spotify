import 'package:flutter/material.dart';

class CloseSliderRow extends StatefulWidget {
  const CloseSliderRow({ Key? key }) : super(key: key);

  @override
  _CloseSliderRowState createState() => _CloseSliderRowState();
}

class _CloseSliderRowState extends State<CloseSliderRow> {
  double val = 1;
  @override
  Widget build(BuildContext context) {
    return 
  Row(children: [
       Text('Kapalı',style: TextStyle(color: Colors.grey)),
            Slider(
              label: '$val',
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
            divisions: 12,     
            value: val,
            min: 0,
            max: 12,
            onChanged: (value) {
              setState(() {
                val = value;});}),
          Text('12 sn',style: TextStyle(color: Colors.grey)),  
      ],);
  }

}

 
  