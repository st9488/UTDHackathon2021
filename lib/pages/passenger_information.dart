import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/person.dart';

import 'other_driver_information.dart';

class PassengerInformation extends StatefulWidget {
  const PassengerInformation({Key? key, required this.list}) : super(key: key);

  final List<Person> list;

  @override
  _PassengerInformationState createState() => _PassengerInformationState();
}

class _PassengerInformationState extends State<PassengerInformation> {
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
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
            const Text(
              "Passengers",
              style: TextStyle(fontSize: 30, color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            const Text(
              "Your Vehicle",
              style: TextStyle(fontSize: 26, color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            CupertinoButton(
                child: const Text(
                  "Add Driver",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                      textAlign: TextAlign.center,
                ),
                onPressed: () {
                  widget.list.add(Person(
                      isMale: _text3.text,
                      lastName: _text2.text,
                      firstName: _text1.text));
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OtherDriverInformation()));
                }),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ],
        )
      ],
    );
  }
}
