import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/globals.dart';
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
              padding: EdgeInsets.symmetric(vertical: 40),),
             const Text(
              "Passengers",
              style: TextStyle(fontSize: 30, color: Color.fromRGBO(255, 0, 0, 1), decoration: TextDecoration.none),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),),
            const Text(
              "Your Vehicle",
              style: TextStyle(fontSize: 30, color: Color.fromRGBO(255, 0, 0, 1),
                  decoration: TextDecoration.none),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),),
            SizedBox(
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height: 15),
                  SizedBox(
                    width: 200,
                    child: CupertinoTextField(
                      controller: _text1,
                      autocorrect: false,
                      cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                      style: TextStyle(color: Colors.grey),
                      decoration: const BoxDecoration(
                          color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10),),
                  SizedBox(
                  width: 200,
                  child: CupertinoTextField(
                  controller: _text2,
                  autocorrect: false,
                  cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                    style: TextStyle(color: Colors.grey),
                    decoration: const BoxDecoration(
                        color: Colors.white
                    ),
                  textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10),),
                  SizedBox(
                    width: 200,
                    child: CupertinoTextField(
                      controller: _text3,
                      autocorrect: false,
                      cursorColor: const Color.fromRGBO(255, 255, 255, 1),
                      style: TextStyle(color: Colors.grey),
                      decoration: const BoxDecoration(
                          color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ]
              )
              ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            SizedBox(
              width: 300,
              child: Container(
              decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
              color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children:[
              SizedBox(
                width: 250,
                height: 50,
                child: CupertinoButton(
                child: const Text(
                "Add Passenger",
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1),
                  decoration: TextDecoration.none,
                ),
                  textAlign: TextAlign.center,
                ),
                  color: Colors.red,
                  onPressed: () {
                  widget.list.add(Person(isMale: _text3.text, firstName: _text1.text, lastName: _text2.text));
                  print("This is the List of Persons: ${currentClaim.everyone}");
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  PassengerInformation(list: widget.list,)));
                  }),
              ),
                const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                ),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: CupertinoButton(
                  child: const Text(
                  "Add Driver",
                  style: TextStyle(fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1),
                  decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                  ),
                  color: Colors.red,
                  onPressed: () {
                  widget.list.add(Person(
                  isMale: _text3.text,
                  lastName: _text2.text,
                  firstName: _text1.text));
                  print("This is the List of Persons: ${currentClaim.everyone}");
                  Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const OtherDriverInformation(list: [],)));
                  }),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                ),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: CupertinoButton(
                    child: const Text(
                      "No One Else",
                    style: TextStyle(fontSize: 18, color: Color.fromRGBO(255, 255, 255, 1),
                    decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center,
                   ),
                      color: Colors.red,
                      onPressed: () {
                      currentClaim.everyone.add([Person(isMale: _text3.text, firstName: _text1.text, lastName: _text2.text)]);
                      print("This is the List of Persons: ${currentClaim.everyone}");
                      Navigator.of(context).pushReplacementNamed('/VehicleInformation');
                    }),
                ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),)
                ]
              ),
              )
              ),
            )
          ],
        )
      ],
    );
  }
}
