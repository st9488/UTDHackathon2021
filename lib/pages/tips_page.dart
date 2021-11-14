import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';

class TipsPage extends StatefulWidget{
  const TipsPage({Key? key}) : super(key: key);
  @override
  State<TipsPage> createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage>{
  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children:[
        const Background(),
        Column(
        children:[
          Padding(padding: EdgeInsets.symmetric(vertical: 30)),
          Text("IMPORTANT TIPS", style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 40, color: Colors.red)),
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  "1. Take photos of all vehicles involved and the accident scene, if it is safe to do so.\n" +
                   "\n2. Make sure to call the police. Tell them the following:\n" +
                    "  a. Date and time of the incident\n" +
                    "  b. Personal information of parties\n\t\tinvolved\n" +
                    "  c. Statements from the drivers\n" +
                    "  d. Statements from any witnesses\n" +
                    "  e. Information about the vehicles involved \t\tin the accident\n" +
                    "  f. Description of the road and any other \n\t\tenvironmental issues\n" +
                    "  g. Any video or surveillance evidence \n\t\tabout the accident" +
                    "  h. Any injuries\n" +
                  "\n3. Do not sign any documents unless it is for the police or your insurance agent.\n" +
                  "\n4. Be polite, but don't tell anyone the accident was your fault, even if you think it was", style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 20, color: Colors.red)
                  ,)
            )
        ),
          CupertinoButton(
              child: Text("Next"),
              onPressed: (){

              },
              color: Colors.red
          )
        ],
        )
        ]
    );
  }
}