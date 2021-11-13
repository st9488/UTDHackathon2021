import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';

class VehiclePage extends StatefulWidget
{

  const VehiclePage({Key? key}) : super(key: key);
  @override
  State<VehiclePage> createState() => _VehiclePageState();
}

class _VehiclePageState extends State<VehiclePage> {
  late TextEditingController _textController1;
  late TextEditingController _textController2;
  late TextEditingController _textController3;
  @override
  void initState()
  {
    super.initState();
    _textController1 = TextEditingController(text: "make");
    _textController2 = TextEditingController(text: "model");
    _textController3 = TextEditingController(text: "year");
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Background(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Text('Make of your car',
              //style: TextStyle(color: Colors.white),
            ),
            CupertinoTextField(
              style: TextStyle(color: Colors.white),
              onChanged: (String value)
              {
                _textController1.value;
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Text('Model of your car',
              //style: TextStyle(color: Colors.white),
            ),
            CupertinoTextField(
              style: TextStyle(color: Colors.white),
              onChanged: (String value)
              {
                _textController2.value;
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Text('Year of your car',
              //style: TextStyle(color: Colors.white),
            ),
            CupertinoTextField(
              style: TextStyle(color: Colors.white),
              onChanged: (String value)
              {
                _textController3.value;
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            CupertinoButton(
                child: Text('Move forward'),
                onPressed: (){
                  print('You hit me');
                },
                color: Colors.blue
            )
          ],
        )
      ]
    );
  }
  //var vehicle = new Vehicle(_textController1.value, _textController2.value, 0);
}