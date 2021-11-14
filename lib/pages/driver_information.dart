import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/pages/passenger_information.dart';
import 'package:utd_hackathon2021/util/globals.dart';
import 'package:utd_hackathon2021/util/person.dart';

import 'other_driver_information.dart';

class DriverInformation extends StatefulWidget {
  const DriverInformation({Key? key}) : super(key: key);

  @override
  _DriverInformationState createState() => _DriverInformationState();
}

class _DriverInformationState extends State<DriverInformation> {

  final TextEditingController _text1 = TextEditingController(text: "First");
  final TextEditingController _text2 = TextEditingController(text: "Last");
  final TextEditingController _text3 = TextEditingController(text: "Gender");

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
      
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            const Text(
              "Your Vehicle",
              style: TextStyle(fontSize: 30, color: Color.fromRGBO(0, 0, 0, 1), ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10),),
            const Text(
                "Who was Driving?",
              style: TextStyle(fontSize: 26, color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            SizedBox(
              width: 250,
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CupertinoTextField(
                    controller: _text1,
                    autocorrect: false,
                    cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                    style: TextStyle(color: Theme.of(context).colorScheme.surface),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0)
                    ),
                    textAlign: TextAlign.center,
                  ),
                  color: Theme.of(context).colorScheme.primary,
                onPressed: () {},
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            SizedBox(
              width: 250,
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CupertinoTextField(
                  cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                  controller: _text2,
                  autocorrect: false,
                  style: TextStyle(color: Theme.of(context).colorScheme.surface),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0)
                  ),
                  textAlign: TextAlign.center,
                ),
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {},
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            SizedBox(
              width: 250,
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CupertinoTextField(
                  cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                  controller: _text3,
                  autocorrect: false,
                  style: TextStyle(color: Theme.of(context).colorScheme.surface),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0)
                  ),
                  textAlign: TextAlign.center,
                ),
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {},
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
                CupertinoButton(
                    child: const Text(
                      "Add Passenger",
                      style: TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                          PassengerInformation(list: [Person(isMale: _text3.text, firstName: _text1.text, lastName: _text2.text)])));
                    }),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
                CupertinoButton(
                    child: const Text(
                      "Add Driver",
                      style: TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      currentClaim.everyone.add([Person(isMale: _text3.text, firstName: _text1.text, lastName: _text2.text)]);
                      print("This is the List of Persons: ${currentClaim.everyone}");
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtherDriverInformation(list: [],)));
                    }),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
              ],
            ),
            CupertinoButton(
                child: const Text(
                  "No one else",
                  style: TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  currentClaim.everyone.add([Person(isMale: _text3.text, firstName: _text1.text, lastName: _text2.text)]);
                  print("This is the List of Persons: ${currentClaim.everyone}");
                  Navigator.of(context).pushReplacementNamed('/VehicleInformation');
                }),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
          ],          
        )
      ],
    );
  }
  
}