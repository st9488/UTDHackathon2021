import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/globals.dart';

class AccidentLocator extends StatefulWidget {
  const AccidentLocator({Key? key}) : super(key: key);

  @override
  State<AccidentLocator> createState() => _AccidentLocatorState();
}

class _AccidentLocatorState extends State<AccidentLocator> {

  String location ='Not Located - Press Button';
  String address = 'search';
  bool show = false;

  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipController = TextEditingController();

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Location permissions are not enable
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }
  Future<void> getAddressFromLatLong(Position position)async {
    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    //print(placemarks);
    Placemark place = placemarks[0];
    address = '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    setState(()  {
    });
  }

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
              Navigator.of(context).pushReplacementNamed('/Eyewitness');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 40, 40, 0),
          child:
          Column(
            children: [

              // AUTO LOCATING SETTING
              const Text(
                "Get Current Location",
                style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 30),
              ),
              Container(
                height: 20,
              ),
              CupertinoButton(onPressed: () async{
                Position position = await _getGeoLocationPosition();
                location = 'Lat: ${position.latitude} , Long ${position.longitude}';
                getAddressFromLatLong(position);
                show = true;

              }, child: const Text("Generate Location", style: TextStyle(color: Colors.white)),
                color: Theme.of(context).colorScheme.background,
              ),
              Container(
                height: 20,
              ),


              // MANUAL LOCATION SETTING

              const Text(
                "Enter the location of the accident:",
                style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 25),
              ),

              Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0), child: CupertinoTextField(
                placeholderStyle: const TextStyle(color:Colors.white),
                placeholder: 'Enter Address',
                controller: addressController,
                style: const TextStyle(color: Colors.white),
                decoration: const BoxDecoration(
                    color: Colors.grey
                ),
              )),
              Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0), child: CupertinoTextField(
                placeholderStyle: const TextStyle(color:Colors.white),
                placeholder: 'Enter City',
                controller: cityController,
                style: const TextStyle(color: Colors.white),
                decoration: const BoxDecoration(
                    color: Colors.grey
                ),
              )),
              Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0), child: CupertinoTextField(
                placeholderStyle: const TextStyle(color:Colors.white),
                placeholder: 'Enter State',
                controller: stateController,
                style: const TextStyle(color: Colors.white),
                decoration: const BoxDecoration(
                    color: Colors.grey
                ),
              )),
              Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0), child: CupertinoTextField(
                placeholderStyle: const TextStyle(color:Colors.white),
                placeholder: 'Enter Zip Code',
                controller: zipController,
                style: const TextStyle(color: Colors.white),
                decoration: const BoxDecoration(
                    color: Colors.grey
                ),
              )),

              Padding(padding: const EdgeInsets.fromLTRB(0, 40, 0, 0), child: CupertinoButton(
                  color: Theme.of(context).colorScheme.background,
                  child: const Text("Submit", style: TextStyle(color: Colors.white)),
                  onPressed: (){
                    address = ('${addressController.text}, ${cityController.text}, ${stateController.text}, ${zipController.text}');
                    show = true;
                    print(address);
                  }
              )),

              Container(
                height: 30,
              ),

              if(show)Text(
                "Your current location: \n$address",
                style: const TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 15),
              ),
              Container(
                height: 20,
              ),
              if(show)CupertinoButton(
                  color: Theme.of(context).colorScheme.background,
                  child: const Text("Confirm Location", style: TextStyle(color: Colors.white)),
                  onPressed: (){
                    print("Confirmed Location: $address");
                    currentClaim.accidentAddress = address;
                    Navigator.of(context).pushReplacementNamed('/Camera ');
                  }
              ),
            ],
          ),
        ),
      ],
    );
  }
}
