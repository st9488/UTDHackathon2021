import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';

class InsurancePage extends StatefulWidget{
  const InsurancePage({Key? key}) : super(key: key);
  @override
  State<InsurancePage> createState() => _InsurancePageState();
}

class _InsurancePageState extends State<InsurancePage>{

  final TextEditingController _textController1 = TextEditingController(text: 'company');
  final TextEditingController _textController2 = TextEditingController(text: 'numbers');

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
                const Padding(padding: EdgeInsets.symmetric(vertical: 60)),
                const Text('Insurance Information',style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 30, color: Colors.red)
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                const Text('Insurance Company',
                    style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 40, color: Colors.red)
                ),
                CupertinoTextField(
                  placeholder: 'Company Name',
                  style: const TextStyle(color: Colors.white),
                  onChanged: (String value)
                  {
                    _textController1.value;
                  },
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                const Text('Insurance number',
                  style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 40, color: Colors.red),
                ),
                CupertinoTextField(
                  placeholder: 'Insurance Number',
                  style: const TextStyle(color: Colors.white),
                  onChanged: (String value)
                  {
                    _textController2.value;
                  },
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                CupertinoButton(
                    child: const Text("Continue"),
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/Eyewitness');
                    },
                    color: Colors.red
                )
              ]
          )
        ]
    );
  }
}