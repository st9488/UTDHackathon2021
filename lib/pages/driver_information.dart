import 'package:flutter/cupertino.dart';
import 'package:utd_hackathon2021/UI/background.dart';

class DriverInformation extends StatefulWidget {
  const DriverInformation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DriverInformationState()
}

class _DriverInformationState extends State<DriverInformation> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
      
        Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 10),),
            Text(
              "Driver/Passengers",
              style: TextStyle(fontSize: 36, color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10),),
            Text(
                "Your Vehicle",
              style: TextStyle(fontSize: 36, color: Color.fromRGBO(0, 0, 0, 1)),
            )
            ListView()
          ],          
        )
      ],
    );
  }
  
}