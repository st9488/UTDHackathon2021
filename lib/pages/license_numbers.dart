import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';

class LicenseNumbers extends StatefulWidget{
  const LicenseNumbers({Key? key}) : super(key: key);

  @override
  State<LicenseNumbers> createState() => _LicenseNumbersState();
}

class _LicenseNumbersState extends State<LicenseNumbers> {
  @override
  late TextEditingController _textController1;
  void initState()
  {
    super.initState();
    _textController1 = TextEditingController(text: "License Plate");
    //_textController2 = TextEditingController(text: "model");
    //_textController3 = TextEditingController(text: "year");
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children:
      [
        const Background(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            Text('Enter your license plate', textAlign: TextAlign.center,
              style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 40, color: Colors.red),
            ),
            CupertinoTextField(
              placeholder: 'License Plate',
              style: TextStyle(color: Colors.white),
              onChanged: (String value)
              {
                _textController1.value;
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            CupertinoButton(
                child: Text('Continue'),
                onPressed: (){
                  print('You hit me');
                },
                color: Colors.red
            )
          ],
        )
      ]
    );
  }
}