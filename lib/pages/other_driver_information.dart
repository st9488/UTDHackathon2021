import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/pages/passenger_information.dart';
import 'package:utd_hackathon2021/util/globals.dart';
import 'package:utd_hackathon2021/util/person.dart';

class OtherDriverInformation extends StatefulWidget {
  const OtherDriverInformation({Key? key, required this.list})
      : super(key: key);

  final List<Person> list;

  @override
  _OtherDriverInformationState createState() => _OtherDriverInformationState();
}

class _OtherDriverInformationState extends State<OtherDriverInformation> {
  final TextEditingController _text1 = TextEditingController(text: "First");
  final TextEditingController _text2 = TextEditingController(text: "Last");
  final TextEditingController _text3 = TextEditingController(text: "Gender");

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Background(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
            ),
            const Text(
              "Other Vehicle",
              style: TextStyle(fontSize: 30, color: Color.fromRGBO(255, 0, 0, 1), decoration: TextDecoration.none),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            const Text(
              "Who was Driving",
              style: TextStyle(fontSize: 26, color: Color.fromRGBO(255, 0, 0, 1), decoration: TextDecoration.none),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
            SizedBox(
              width: 250,
              child: CupertinoTextField(
                cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                controller: _text1,
                autocorrect: false,
                style: TextStyle(color: Theme.of(context).colorScheme.surface),
                decoration:
                const BoxDecoration(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
            SizedBox(
              width: 250,
              child: CupertinoTextField(
                cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                controller: _text2,
                autocorrect: false,
                style: TextStyle(color: Theme.of(context).colorScheme.surface),
                decoration:
                const BoxDecoration(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
            SizedBox(
              width: 250,
                child: CupertinoTextField(
                  cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                  controller: _text3,
                  autocorrect: false,
                  style: TextStyle(color: Theme.of(context).colorScheme.surface),
                  decoration:
                  const BoxDecoration(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            CupertinoButton(
                child: const Text(
                  "Add Passenger",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromRGBO(255, 0, 0, 1), decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PassengerInformation(
                        list: [
                          Person(
                              isMale: _text3.text,
                              firstName: _text1.text,
                              lastName: _text2.text)
                        ],
                      )));
                }),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            CupertinoButton(
                child: const Text(
                  "Add Driver",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromRGBO(255, 0, 0, 1), decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  currentClaim.everyone.add([Person(isMale: _text3.text, firstName: _text1.text, lastName: _text2.text)]);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OtherDriverInformation(list: [],)));
                }),
            CupertinoButton(
                child: const Text(
                  "No One Else",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromRGBO(255, 0, 0, 1), decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  currentClaim.everyone.add([Person(isMale: _text3.text, firstName: _text1.text, lastName: _text2.text)]);
                  Navigator.of(context)
                      .pushReplacementNamed('/VehicleInformation');
                }),
          ],
        )
      ],
    );
  }
}