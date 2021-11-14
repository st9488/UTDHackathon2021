import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/globals.dart';
import 'package:utd_hackathon2021/util/services/auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return Stack (
        alignment: Alignment.center,
        children: [
          const Background(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'ClaimSafe',
                  style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue'),
                ),
                Container(
                  height: 30,
                ),
                SizedBox(
                  width: 250,
                  child: CupertinoButton(
                    color: Theme.of(context).colorScheme.background,
                    child: const Text("File a Claim Now", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/Panic');
                    },
                  ),
                ),

                const Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child:
                  LoginInfo(),
                ),
              ],
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

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  final controllerUserSignIn = TextEditingController();
  final controllerPassSignIn = TextEditingController();


  @override
  Widget build (BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue'),
            ),

            Container(
              height: 25,
            ),

                SizedBox(
                  width: 300,
                  height: 45,
                  child: CupertinoTextField(
                    controller: controllerUserSignIn,
                    placeholder: 'Username',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),

                Container(
                  height: 15,
                ),

                SizedBox(
                  width: 300,
                  height: 45,
                  child: CupertinoTextField(
                    controller: controllerPassSignIn,
                    placeholder: 'Password',
                    style: const TextStyle(color: Colors.white),

                  ),
                ),

            Container(
              height: 30,
            ),

            SizedBox(
              width: 250,
              child: CupertinoButton(
                  color: Theme.of(context).colorScheme.background,
                  child: const Text("Sign In", style: TextStyle(color: Colors.white)),
                  onPressed: () async {
                    dynamic result = await _auth.signInWithEmailAndPassword(controllerUserSignIn.text, controllerPassSignIn.text);
                    if(result == null){
                      print("error: user not found");
                    } else {
                      currentUserSelf = result;
                      Navigator.of(context).pushReplacementNamed('/Main');
                    }
                  }
              ),
            ),

            Container(
              height: 30,
            ),


            SizedBox(
              width: 250,
              child: CupertinoButton(
                  color: Theme.of(context).colorScheme.background,
                  child: const Text("Create Account", style: TextStyle(color: Colors.white)),
                  onPressed: () async {
                    print(controllerPassSignIn.text + " - " + controllerUserSignIn.text);
                    dynamic result = await _auth.registerWithEmailAndPassword(controllerUserSignIn.text, controllerPassSignIn.text);
                    Navigator.of(context).pushReplacementNamed('/Main');
                  }
                ),
            ),
            ]
            ),
          );
        }


  }


