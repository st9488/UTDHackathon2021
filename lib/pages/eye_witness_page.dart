import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/eye_witness.dart';
import 'package:utd_hackathon2021/util/globals.dart';

class EyeWitness extends StatefulWidget {
  const EyeWitness({Key? key, required this.list}) : super(key: key);

  final List<Eyewitness> list;

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
            const Padding(padding: EdgeInsets.symmetric(vertical: 60),),
            const Text(
              "Eyewitness",
              style: TextStyle(fontSize: 30, color: Color.fromRGBO(255, 0, 0, 1), decoration: TextDecoration.none),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            SizedBox(
              width: 250,
                child: CupertinoTextField(
                  controller: _text1,
                  autocorrect: false,
                  cursorColor: const Color.fromRGBO(255, 255, 255, 1),
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
                    child: Text(
                      "Add Eyewitness",
                      style: TextStyle(fontSize: 30, color: Colors.red, decoration: TextDecoration.underline),
                      textAlign: TextAlign.center,
                      ),
                    onPressed: () {
                      widget.list.add(Eyewitness(firstName: _text1.text, lastName: _text2.text, phoneNumber: _text3.text,));
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                          EyeWitness(list: widget.list,)));
                    }),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
              ],
            ),
            CupertinoButton(
                child: Text(
                  "No one else",
                  style: TextStyle(fontSize: 30, color: Colors.red, decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  currentClaim.eyewitness = widget.list;
                  Navigator.of(context).pushReplacementNamed('/');
                }),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
          ],
        )
      ],
    );
  }

}