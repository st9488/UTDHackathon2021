import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/eye_witness.dart';

class Eyewitness extends StatefulWidget {
  const Eyewitness({Key? key, required this.list}) : super(key: key);

  final List<EyeWitness> list;

  @override
  _EyewitnessState createState() => _EyewitnessState();
}

class _EyewitnessState extends State<Eyewitness> {

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
              style: TextStyle(fontSize: 30, color: Color.fromRGBO(0, 0, 0, 1), ),
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
                      "Add Eyewitness",
                      style: TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      widget.list.add(EyeWitness(firstName: _text1.text, lastName: _text2.text, phoneNumber: _text3.text));
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                          Eyewitness(list: widget.list,)));
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
                  // TODO IMPLEMENT DATABASE CALL
                  Navigator.of(context).pushReplacementNamed('/');
                }),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
          ],
        )
      ],
    );
  }

}