import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/globals.dart';

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
                const Padding(padding: EdgeInsets.symmetric(vertical: 60)),
                const Text('Insurance Information',style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 30, color: Colors.red)
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                const Text('Insurance Company',
                    style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 20, color: Colors.red)
                ),
                SizedBox(
                  width: 250,
                  child: CupertinoTextField(
                    placeholderStyle: const TextStyle(color: Colors.white),
                    placeholder: 'Company Name',
                    style: const TextStyle(color: Colors.white),
                    onChanged: (String value)
                    {
                      _textController1.value;
                    },
                    decoration: const BoxDecoration(
                        color: Colors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                const Text('Insurance Number',
                  style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 20, color: Colors.red),
                ),
                SizedBox(
                  width: 250,
                  child: CupertinoTextField(
                    placeholderStyle: const TextStyle(color: Colors.white),
                    placeholder: 'Insurance Number',
                    style: const TextStyle(color: Colors.white),
                    onChanged: (String value)
                    {
                      _textController2.value;
                    },
                    decoration: const BoxDecoration(
                        color: Colors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                CupertinoButton(
                    child: const Text("Continue", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      currentClaim.insurance.companyName = _textController1.text;
                      currentClaim.insurance.number = _textController2.text;
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