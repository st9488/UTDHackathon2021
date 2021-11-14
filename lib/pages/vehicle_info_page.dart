import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/globals.dart';
import 'package:utd_hackathon2021/util/vehicle.dart';

class VehiclePage extends StatefulWidget
{

  const VehiclePage({Key? key}) : super(key: key);
  @override
  State<VehiclePage> createState() => _VehiclePageState();
}

class _VehiclePageState extends State<VehiclePage> {
  final TextEditingController _textController1 = TextEditingController(text: "make");
  final TextEditingController _textController2 = TextEditingController(text: "model");
  final TextEditingController _textController3 = TextEditingController(text: "year");

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        children: [
          const Background(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.symmetric(vertical: 60)),
              const Text('Make of your car',
                style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 40, color: Colors.red),
              ),
              CupertinoTextField(
                placeholder: 'Make',
                style: const TextStyle(color: Colors.white),
                controller: _textController1,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              const Text('Model of your car',
                style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 40, color: Colors.red),
              ),
              CupertinoTextField(
                placeholder: 'Model',
                style: const TextStyle(color: Colors.white),
                controller: _textController2,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              const Text('Year of your car',
                style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 40, color: Colors.red),
              ),
              CupertinoTextField(
                placeholder: 'Year',
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.white),
                controller: _textController3,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              CupertinoButton(
                  child: const Text('Move forward'),
                  onPressed: (){
                    currentClaim.vehicles.add(Vehicle(year: int.parse(_textController3.text.toString()), model: _textController2.text, make: _textController1.text));
                    Navigator.of(context).pushReplacementNamed('/InsuranceInformation');
                  },
                  color: Colors.red
              )
            ],
          )
        ]
    );
  }
}