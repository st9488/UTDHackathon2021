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
  final TextEditingController _text1 = TextEditingController();
  final TextEditingController _text2 = TextEditingController();
  final TextEditingController _text3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Other Vehicle",
              style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 40),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
            const Text(
              "Who was Driving",
              style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 30),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            SizedBox(
              width: 300,
              height: 200,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      SizedBox(
                        width: 250,
                          child: CupertinoTextField(
                            controller: _text1,
                            placeholder: 'First Name',
                            placeholderStyle: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
                            autocorrect: false,
                            cursorColor: const Color.fromRGBO(0, 0, 0, 1),
                            style: TextStyle(color: Colors.black),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                            textAlign: TextAlign.center,
                          ),
                        ),

                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                      SizedBox(
                        width: 250,
                          child: CupertinoTextField(
                            controller: _text2,
                            placeholder: 'Last Name',
                            placeholderStyle: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
                            cursorColor: const Color.fromRGBO(0, 0, 0, 1),
                            style: TextStyle(color: Colors.black),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            textAlign: TextAlign.center,
                          ),

                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                      ),
                      SizedBox(
                        width: 250,
                        child: CupertinoTextField(
                          controller: _text3,
                          placeholder: 'Gender',
                          placeholderStyle: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
                          cursorColor: const Color.fromRGBO(0, 0, 0, 1),
                          style: TextStyle(color: Colors.black),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                          textAlign: TextAlign.center,
                          ),
                      ),
                      //const Padding(
                      //  padding: EdgeInsets.symmetric(vertical: 20),
                      //),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                      ),

                  ]),
                ),
              ),
            ),

            Container(height: 30),

            SizedBox(
              width: 300,
              height: 300,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SizedBox(
                    width: 240,
                    height: 65,
                    child: CupertinoButton(
                        color: Theme.of(context).colorScheme.background,
                        child: const Text(
                          "Add Passenger",
                          style: TextStyle(
                              fontSize: 15, color: Color.fromRGBO(255, 255, 255, 1)),
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
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                  SizedBox(
                    width: 240,
                    height: 65,
                    child: CupertinoButton(
                        color: Theme.of(context).colorScheme.background,
                        child: const Text(
                          "Add Driver",
                          style: TextStyle(
                              fontSize: 15, color: Color.fromRGBO(255, 255, 255, 1)),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          currentClaim.everyone.add([Person(isMale: _text3.text, firstName: _text1.text, lastName: _text2.text)]);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const OtherDriverInformation(list: [],)));
                        }),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                  SizedBox(
                    width: 240,
                    height: 65,
                    child: CupertinoButton(
                        color: Theme.of(context).colorScheme.background,
                        child: const Text(
                          "No One Else",
                          style: TextStyle(
                              fontSize: 15, color: Color.fromRGBO(255, 255, 255, 1)),
                          textAlign: TextAlign.center,

                        ),
                        onPressed: () {
                          currentClaim.everyone.add([Person(isMale: _text3.text, firstName: _text1.text, lastName: _text2.text)]);
                          Navigator.of(context)
                              .pushReplacementNamed('/VehicleInformation');
                        }),
                  ),
                ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}