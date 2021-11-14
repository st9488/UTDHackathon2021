import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/globals.dart';
import 'package:utd_hackathon2021/util/vehicle.dart';

class VehiclePage extends StatefulWidget {
  const VehiclePage({Key? key}) : super(key: key);

  @override
  State<VehiclePage> createState() => _VehiclePageState();
}

class _VehiclePageState extends State<VehiclePage> {
  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final TextEditingController _textController3 = TextEditingController();
  final TextEditingController _textController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      const Background(),
      Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.only(left: 10, top: 35),
        child: GestureDetector(
          child: const Icon(CupertinoIcons.arrow_left_circle, color: Colors.black, size: 50,),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/Tips');
          },
        ),
      ),
      Column(
        children: [
          const Padding(padding: EdgeInsets.symmetric(vertical: 30),),
          const Text(
              'Other Vehicle Information',
            style: TextStyle(color: Colors.red, fontSize: 32, decoration: TextDecoration.none, fontFamily: "Bebas"),
            textAlign: TextAlign.center,

          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 30),),
          Container(
            width: 325,
            height: 450,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(93, 93, 93, 0.18),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                const Text(
                  'Make of your car',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'BabasNeue',
                      fontSize: 20,
                      color: Colors.red),
                ),
                SizedBox(
                  width: 275,
                  child: CupertinoTextField(
                    placeholder: 'Make',
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                    controller: _textController1,
                    placeholderStyle: const TextStyle(color: Colors.black),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                const Text(
                  'Model of your car',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'BabasNeue',
                      fontSize: 20,
                      color: Colors.red),
                ),
                SizedBox(
                  width: 275,
                  child: CupertinoTextField(
                    placeholder: 'Model',
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                    controller: _textController2,
                    placeholderStyle: const TextStyle(color: Colors.black),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                const Text(
                  'Year of your car',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'BabasNeue',
                      fontSize: 20,
                      color: Colors.red),
                ),
                SizedBox(
                  width: 275,
                  child: CupertinoTextField(
                    placeholder: 'Year',
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                    controller: _textController3,
                    placeholderStyle: const TextStyle(color: Colors.black),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                const Text(
                  'License Plate Number',
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'BabasNeue',
                      fontSize: 20,
                      color: Colors.red),
                ),
                SizedBox(
                  width: 275,
                  child: CupertinoTextField(
                    placeholder: 'License Number',
                    placeholderStyle: const TextStyle(color: Colors.black),
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                    controller: _textController4,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          CupertinoButton(
              child: const Text('Next'),
              onPressed: () {
                currentClaim.vehicles.add(Vehicle(
                    year: int.parse(_textController3.text.toString()),
                    model: _textController2.text,
                    make: _textController1.text));
                Navigator.of(context)
                    .pushReplacementNamed('/InsuranceInformation');
              },
              color: Colors.red
          ),
        ],
      )
    ]);
  }
}
