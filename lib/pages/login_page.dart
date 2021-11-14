import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/claim.dart';
import 'package:utd_hackathon2021/util/globals.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return Stack (
      alignment: Alignment.center,
      children: [
        const Background(),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 80, 40, 0),
          child:
          Column(
            children: [
              const Text(
                'ClaimSafe',
                style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue'),
              ),

              Padding(padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child:
                  CupertinoButton(
                    color: Theme.of(context).colorScheme.background,
                    child: const Text("File a Claim Now", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      currentClaim = Claim();
                      Navigator.of(context).pushReplacementNamed('/Panic');
                    },
                  )
              ),
              const Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child:
                LoginInfo(),
              ),
            ],
          ),
        ),
      ],

    );
  }
}


class LoginInfo extends StatelessWidget{
  const LoginInfo({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return Column(
        children: [
          const Text(
            'Login',
            style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue'),
          ),
          const InputFields(),
          CupertinoButton(
              color: Theme.of(context).colorScheme.background,
              child: const Text("Submit", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/Main');
              }
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10),),
          const Text(
            'Create Account',
            style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue'),
          ),
          const InputFields(),
          CupertinoButton(
              color: Theme.of(context).colorScheme.background,
              child: const Text("Submit", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/Main');
              }
          ),
        ]
    );
  }
}

class InputFields extends StatefulWidget{
  const InputFields({Key? key}) : super(key: key);

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  @override
  Widget build (BuildContext context){
    return
      Padding( padding: const EdgeInsets.fromLTRB(0, 5, 0, 20) ,
          child: Column(
            children: const [
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child:
                  CupertinoTextField(
                    placeholderStyle: TextStyle(color: Colors.white),
                    placeholder: 'Username',
                    style: TextStyle(color: Colors.white),
                    decoration: const BoxDecoration(
                      color: Colors.grey
                    )
                  )
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child:
                  CupertinoTextField(
                    placeholderStyle: TextStyle(color: Colors.white),
                    placeholder: 'Password',
                    style: TextStyle(color: Colors.white),
                      decoration: const BoxDecoration(
                          color: Colors.grey
                      )
                  )
              ),
            ],
          )
      );
  }
}