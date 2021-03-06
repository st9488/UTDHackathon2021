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
      alignment: Alignment.center,
      children: [
        const Background(),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 35),
          child: GestureDetector(
            child: const Icon(CupertinoIcons.arrow_left_circle, color: Colors.black, size: 50,),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/InsuranceInformation');
            },
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 80),),
            const Text(
              "Eyewitness",
              style: TextStyle(fontSize: 30, color: Color.fromRGBO(255, 0, 0, 1), fontFamily: 'BabasNeue', decoration: TextDecoration.none),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            SizedBox(
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(93, 93, 93, 0.18),
                    border: Border.all(
                      color: const Color.fromRGBO(93, 93, 93, 0.18),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))
                ),
                child: Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200,
                            child: CupertinoTextField(
                              placeholderStyle: const TextStyle(color: Colors.black),
                              cursorColor: const Color.fromRGBO(0, 0, 0, 1),
                              controller: _text1,
                              autocorrect: false,
                              style: const TextStyle(color: Colors.black),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(10))),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
                          SizedBox(
                            width: 200,
                            child: CupertinoTextField(
                              placeholderStyle: const TextStyle(color: Colors.black),
                              cursorColor: const Color.fromRGBO(0, 0, 0, 1),
                              controller: _text2,
                              autocorrect: false,
                              style: const TextStyle(color: Colors.black),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(10))),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
                          SizedBox(
                            width: 200,
                            child: CupertinoTextField(
                              placeholderStyle: const TextStyle(color: Colors.black),
                              cursorColor: const Color.fromRGBO(0, 0, 0, 1),
                              controller: _text3,
                              autocorrect: false,
                              style: const TextStyle(color: Colors.black),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(10))),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]
                    )

                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20),),
            SizedBox(
              width: 300,
              child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(93, 93, 93, 0.18),
                      border: Border.all(
                        color: const Color.fromRGBO(93, 93, 93, 0.18),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 250,
                              child: CupertinoButton(
                                  child: const Text(
                                    "Add Eyewitness",
                                    style: TextStyle(fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1), decoration: TextDecoration.none,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  color: Colors.red,
                                  onPressed: () {
                                    currentClaim.eyewitness.add(Eyewitness(firstName: _text1.text, lastName: _text2.text, phoneNumber: _text3.text,));
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                    const EyeWitness()));
                                  }),
                            ),
                            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                            SizedBox(
                              width: 250,
                              child: CupertinoButton(
                                  child: const Text(
                                    "No one else",
                                    style: TextStyle(fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1), decoration: TextDecoration.none),
                                    textAlign: TextAlign.center,
                                  ),
                                  color: Colors.red,
                                  onPressed: () {
                                    currentClaim.eyewitness.add(Eyewitness(firstName: _text1.text, lastName: _text2.text, phoneNumber: _text3.text,));
                                    Navigator.of(context).pushReplacementNamed('/AccidentLocator');
                                  }),
                            ),
                          ]
                      )
                  )
              ),
            ),

            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
          ],
        )
      ],
    );
  }

}