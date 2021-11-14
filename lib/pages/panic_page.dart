import 'package:flutter/cupertino.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:flutter/material.dart';

class PanicPage extends StatelessWidget {
  const PanicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Background(),
          SizedBox(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("First and foremost, make sure to call the police",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20
                        )
                    ),
                  ),
                ),
                Container(height: 20,),

                Container(
                  width: 375,
                  height: 340,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 15),
                        const Text("Inform the police of: " ,
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontSize: 20,
                            )
                        ),
                        Container(height: 20),
                        Text("• Date and time of the accident" ,
                            style: TextStyle(color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.none,
                                fontSize: 15
                            )
                        ),
                        Text("• Personal information of the parties involved" ,
                            style: TextStyle(color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.none,
                                fontSize: 15
                            )
                        ),
                        Text("• Statements from the drivers" ,
                            style: TextStyle(color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.none,
                                fontSize: 15
                            )
                        ),
                        Text("• Statements from any witnesses" ,
                            style: TextStyle(color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.none,
                                fontSize: 15
                            )
                        ),
                        Text("• Information about the vehicles involved in the accident" ,
                            style: TextStyle(color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.none,
                                fontSize: 15
                            )
                        ),
                        Text("• Description of the road and any other environmental issues" ,
                            style: TextStyle(color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.none,
                                fontSize: 15
                            )
                        ),
                        Text("• Any video or surveillance equipment that may have documented the accident" ,
                            style: TextStyle(color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.none,
                                fontSize: 15
                            )
                        ),
                        Text("• Injuries" ,
                            style: TextStyle(color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.none,
                                fontSize: 15
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 30),
                    SizedBox(
                      width: 275,
                      height: 50,
                      child: CupertinoButton(
                          color: Theme.of(context).colorScheme.primary,
                          child: Text('Call Police', style: TextStyle(color: Theme.of(context).colorScheme.onBackground)),
                          onPressed: () {}
                      ),
                    ),
                    Container(height: 15),
                    SizedBox(
                      width: 275,
                      height: 50,
                      child: CupertinoButton(
                          color: Theme.of(context).colorScheme.primary,
                          child: Text('Next', style: TextStyle(color: Theme.of(context).colorScheme.onBackground)),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/Tips');
                          }
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}