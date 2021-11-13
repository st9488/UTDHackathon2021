import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:utd_hackathon2021/UI/background.dart';

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
                    child: const Text("File a Claim Now"),
                    onPressed: () {
                    print("Debug: File Claim Button has been clicked.");
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


class LoginInfo extends StatefulWidget{
  const LoginInfo({Key? key}) : super(key: key);

  @override
  State<LoginInfo> createState() => _LoginInfoState();
}

class _LoginInfoState extends State<LoginInfo> {

  final userController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build (BuildContext context){
    return Column(
      children: [
        const Text(
          'Login',
          style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue'),
        ),

        Padding( padding: const EdgeInsets.fromLTRB(0, 5, 0, 20) ,
          child: Column(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child:
              CupertinoTextField(
                placeholder: 'Username',
                style: const TextStyle(color: Colors.white),
                controller: userController,
              )
            ),
            Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child:
                CupertinoTextField(
                  placeholder: 'Password',
                  style: const TextStyle(color: Colors.white),
                  controller: passController,
                )
              ),
            ],
          )
        ),


        CupertinoButton(
          color: Theme.of(context).colorScheme.background,
          child: const Text("Submit"),
          onPressed: () {
            print(userController.text + " - " + passController.text);
          }
        ),
      ]
    );
  }
}
