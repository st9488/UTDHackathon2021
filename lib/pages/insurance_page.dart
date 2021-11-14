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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Insurance Information',style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 30, color: Colors.red)
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                SizedBox(
                  width: 300,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           SizedBox(
                            width: 200,
                            child: CupertinoTextField(
                            placeholderStyle: const TextStyle(color: Colors.black),
                            placeholder: 'Company Name',
                            style: const TextStyle(color: Colors.black),
                            onChanged: (String value)
                            {
                              _textController1.value;
                            },
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                color: Colors.white,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                                textAlign: TextAlign.center,
                            ),
                            ),
                            const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                            SizedBox(
                              width: 200,
                                child: CupertinoTextField(
                                placeholderStyle: const TextStyle(color: Colors.black),
                                placeholder: 'Insurance Number',
                                style: const TextStyle(color: Colors.black),
                                onChanged: (String value) {
                                  _textController2.value;
                                },
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                            textAlign: TextAlign.center,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                          SizedBox(
                            width: 200,
                            child: CupertinoButton(
                                child: const Text("Continue", style: TextStyle(color: Colors.white)),
                                onPressed: (){
                                currentClaim.insurance.companyName = _textController1.text;
                                currentClaim.insurance.number = _textController2.text;
                                Navigator.of(context).pushReplacementNamed('/Eyewitness');
                            },
                        color: Colors.red
                            ),
                          )
                        ]
                    )
                  ),
                  ),
                )
              ]
          )
        ]
    );
  }
}