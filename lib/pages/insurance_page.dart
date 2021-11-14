import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';

class InsurancePage extends StatefulWidget{
  const InsurancePage({Key? key}) : super(key: key);
  @override
  State<InsurancePage> createState() => _InsurancePageState();
}

class _InsurancePageState extends State<InsurancePage>{
  @override
  late TextEditingController _textController1;
  late TextEditingController _textController2;
  void initState()
  {
    super.initState();
    _textController1 = TextEditingController(text: 'company');
    _textController2 = TextEditingController(text: 'numbers');
  }
  @override
  Widget build(BuildContext context)
  {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Background(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 60)),
            Text('Insurance Information',style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 30, color: Colors.red)
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Text('Insurance Company',
              style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 40, color: Colors.red)
            ),
            CupertinoTextField(
              placeholder: 'Company Name',
              style: TextStyle(color: Colors.white),
              onChanged: (String value)
              {
                _textController1.value;
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Text('Insurance number',
              style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 40, color: Colors.red),
            ),
            CupertinoTextField(
              placeholder: 'Insurance Number',
              style: TextStyle(color: Colors.white),
              onChanged: (String value)
              {
                _textController1.value;
              },
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            CupertinoButton(
                child: Text("Continue"),
                onPressed: (){

                },
                color: Colors.red
            )
          ]
        )
      ]
    );
  }
}