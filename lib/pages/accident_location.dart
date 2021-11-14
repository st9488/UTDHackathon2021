import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/location.dart';

class AccidentLocation extends StatefulWidget {
  const AccidentLocation({Key? key}) : super(key: key);

  @override
  State<AccidentLocation> createState() => _AccidentLocationState();
}

class _AccidentLocationState extends State<AccidentLocation> {
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Background(),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 80, 40, 0),
          child:
            Column(
              children: [
                const Text(
                  "Enter the location of the accident:",
                  style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 25),
                ),

                Padding(padding: const EdgeInsets.fromLTRB(0, 40, 0, 0), child: CupertinoTextField(
                  placeholder: 'Enter Address',
                  controller: addressController,
                  style: const TextStyle(color: Colors.white),
                )),
                Padding(padding: const EdgeInsets.fromLTRB(0, 40, 0, 0), child: CupertinoTextField(
                  placeholder: 'Enter City',
                  controller: cityController,
                  style: const TextStyle(color: Colors.white),
                )),
              Padding(padding: const EdgeInsets.fromLTRB(0, 40, 0, 0), child: CupertinoTextField(
                  placeholder: 'Enter State',
                  controller: stateController,
                  style: const TextStyle(color: Colors.white),
                )),
                Padding(padding: const EdgeInsets.fromLTRB(0, 40, 0, 0), child: CupertinoTextField(
                  placeholder: 'Enter Zip Code',
                  controller: zipController,
                  style: const TextStyle(color: Colors.white),
                )),

                Padding(padding: const EdgeInsets.fromLTRB(0, 40, 0, 0), child: CupertinoButton(
                  color: Theme.of(context).colorScheme.background,
                  child: const Text("Submit", style: TextStyle(color: Colors.white)),
                  onPressed: (){
                    Location location = Location(addressController.text, cityController.text, stateController.text, zipController.text);
                    print(location.getAddress() + " - " + location.getCity() + " - " + location.getState() + " - " + location.getZip());
                  }
                )),
            ],
          )
        )
      ],
    );
  }
}
