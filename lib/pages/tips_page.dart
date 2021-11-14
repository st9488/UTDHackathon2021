import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/globals.dart';

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
        alignment: Alignment.center,
        children:[
          const Background(),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 10, top: 35),
            child: GestureDetector(
              child: const Icon(CupertinoIcons.arrow_left_circle, color: Colors.black, size: 50,),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/Panic');
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                height: 500,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(93, 93, 93, 0.18),
                      border: Border.all(
                        color: const Color.fromRGBO(93, 93, 93, 0.18),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    children:const [
                      Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                      Text("IMPORTANT TIPS", textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 40, color: Colors.red,),),
                      Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                      Expanded(
                          flex: 1,
                          child: SingleChildScrollView(

                              scrollDirection: Axis.vertical,

                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  "1. Take photos of all vehicles involved and the accident scene, if it is safe to do so.\n"
                                      "\n2. Make sure to call the police. Tell them the following:\n"
                                      "  a. Date and time of the incident\n"
                                      "  b. Personal information of parties\n\t\tinvolved\n"
                                      "  c. Statements from the drivers\n"
                                      "  d. Statements from any witnesses\n"
                                      "  e. Information about the vehicles \t\tinvolved in the accident\n"
                                      "  f. Description of the road and any \t\tother environmental issues\n"
                                      "  g. Any video or surveillance \t\t\t\t\t\tevidence about the accident\n"
                                      "  h. Any injuries\n"
                                      "\n3. Do not sign any documents unless it is for the police or your insurance agent.\n"
                                      "\n4. Be polite, but don't tell anyone the accident was your fault, even if you think it was", style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue', fontSize: 20, color: Color.fromRGBO(105, 105, 105, 1))
                                  ,),
                              )
                          )
                      ),

                    ],
                  ),
                ),
              ),
              Container(height: 30),
              CupertinoButton(
                  child: const Text("Next", style: TextStyle(color: Colors.white)),
                  onPressed: (){
                    currentClaim.everyone = [];
                    Navigator.of(context).pushReplacementNamed('/DriverInformation');
                  },
                  color: Colors.red
              ),
            ],
          ),

        ]
    );
  }
}