import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/eye_witness.dart';
import 'package:utd_hackathon2021/util/globals.dart';

class EyeWitness extends StatefulWidget {
  const EyeWitness({Key? key}) : super(key: key);

  @override
  _EyewitnessState createState() => _EyewitnessState();
}

class _EyewitnessState extends State<EyeWitness> {

  final TextEditingController _text1 = TextEditingController(text: "First");
  final TextEditingController _text2 = TextEditingController(text: "Last");
  final TextEditingController _text3 = TextEditingController(text: "Phone Number");

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
              "Eyewitness",
              style: TextStyle(fontSize: 30, color: Color.fromRGBO(255, 0, 0, 1), decoration: TextDecoration.none),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            SizedBox(
              width: 250,
              child: CupertinoTextField(
                cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                controller: _text1,
                autocorrect: false,
                style: TextStyle(color: Theme.of(context).colorScheme.surface),
                decoration: const BoxDecoration(
                    color: Colors.grey
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            SizedBox(
              width: 250,
              child: CupertinoTextField(
                cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                controller: _text2,
                autocorrect: false,
                style: TextStyle(color: Theme.of(context).colorScheme.surface),
                decoration: const BoxDecoration(
                    color: Colors.grey
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            SizedBox(
              width: 250,
                child: CupertinoTextField(
                  cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                  controller: _text3,
                  autocorrect: false,
                  style: TextStyle(color: Theme.of(context).colorScheme.surface),
                  decoration: const BoxDecoration(
                      color: Colors.grey
                  ),
                  textAlign: TextAlign.center,
                ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
                CupertinoButton(
                    child: const Text(
                      "Add Eyewitness",
                      style: TextStyle(fontSize: 30, color: Color.fromRGBO(255, 0, 0, 1), decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      currentClaim.eyewitness.add(Eyewitness(firstName: _text1.text, lastName: _text2.text, phoneNumber: _text3.text,));
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                          const EyeWitness()));
                    }),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
              ],
            ),
            CupertinoButton(
                child: const Text(
                  "No one else",
                  style: TextStyle(fontSize: 30, color: Color.fromRGBO(255, 0, 0, 1), decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  currentClaim.eyewitness.add(Eyewitness(firstName: _text1.text, lastName: _text2.text, phoneNumber: _text3.text,));
                  Navigator.of(context).pushReplacementNamed('/AccidentLocator');
                }),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
          ],
        )
      ],
    );
  }

}