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
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 10, top: 35),
            child: GestureDetector(
              child: const Icon(CupertinoIcons.arrow_left_circle, color: Colors.black, size: 50,),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ),
          SizedBox(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(93, 93, 93, 0.18),
                      border: Border.all(
                        color: const Color.fromRGBO(93, 93, 93, 0.18),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("First and foremost, make sure to call the police",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                          fontFamily: 'Bebas',
                        ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(height: 20,),

                Container(
                  width: 375,
                  height: 340,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(93, 93, 93, 0.18),
                      border: Border.all(
                        color: const Color.fromRGBO(93, 93, 93, 0.18),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20))
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
                              fontFamily: 'Bebas',
                            )
                        ),
                        Container(height: 20),
                        const Text("• Date and time of the accident" ,
                            style: TextStyle(color: Color.fromRGBO(105, 105, 105, 1),
                                decoration: TextDecoration.none,
                                fontSize: 15,
                              fontFamily: 'Bebas',
                            )
                        ),
                        const Text("• Personal information of the parties involved" ,
                            style: TextStyle(color: Color.fromRGBO(105, 105, 105, 1),
                                decoration: TextDecoration.none,
                                fontSize: 15,
                              fontFamily: 'Bebas',
                            )
                        ),
                        const Text("• Statements from the drivers" ,
                            style: TextStyle(color: Color.fromRGBO(105, 105, 105, 1),
                                decoration: TextDecoration.none,
                                fontSize: 15,
                              fontFamily: 'Bebas',
                            )
                        ),
                        const Text("• Statements from any witnesses" ,
                            style: TextStyle(color: Color.fromRGBO(105, 105, 105, 1),
                                decoration: TextDecoration.none,
                                fontSize: 15,
                              fontFamily: 'Bebas',
                            )
                        ),
                        const Text("• Information about the vehicles involved in the accident" ,
                            style: TextStyle(color: Color.fromRGBO(105, 105, 105, 1),
                                decoration: TextDecoration.none,
                                fontSize: 15,
                              fontFamily: 'Bebas',
                            )
                        ),
                        const Text("• Description of the road and any other environmental issues" ,
                            style: TextStyle(color: Color.fromRGBO(105, 105, 105, 1),
                                decoration: TextDecoration.none,
                                fontSize: 15,
                              fontFamily: 'Bebas',
                            )
                        ),
                        const Text("• Any video or surveillance equipment that may have documented the accident" ,
                            style: TextStyle(color: Color.fromRGBO(105, 105, 105, 1),
                                decoration: TextDecoration.none,
                                fontSize: 15,
                              fontFamily: 'Bebas',
                            )
                        ),
                        const Text("• Injuries" ,
                            style: TextStyle(color: Color.fromRGBO(105, 105, 105, 1),
                                decoration: TextDecoration.none,
                                fontSize: 15,
                              fontFamily: 'Bebas',
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