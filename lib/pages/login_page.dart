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
                      Navigator.of(context).pushReplacementNamed('/Tips');
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
              child: const Text("Submit"),
              onPressed: () {
                print("Debug: Login Button has been clicked.");
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
                    placeholder: 'Username',
                    style: TextStyle(color: Colors.white),
                  )
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child:
                  CupertinoTextField(
                    placeholder: 'Password',
                    style: TextStyle(color: Colors.white),
                  )
              ),
            ],
          )
      );
  }
}