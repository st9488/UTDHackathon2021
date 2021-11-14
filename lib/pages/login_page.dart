import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:utd_hackathon2021/util/claim.dart';
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
            const SizedBox(width: 120, height: 120, child:Image(image: AssetImage('assets/graphics/logo.png'))),
            const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Container(
              width: 325,
              height: 180,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(93, 93, 93, 0.18),
                  border: Border.all(
                    color: const Color.fromRGBO(93, 93, 93, 0.18),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
              //color: Colors.grey,
              child: Column(
                children: [
                  Container(
                    height: 10,
                  ),
                  const Text(
                    'ClaimSafe',
                    style: TextStyle(decoration: TextDecoration.none, fontFamily: 'BabasNeue'),
                  ),
                  Container(
                    height: 20,
                  ),

                  SizedBox(
                    width: 250,
                    child: CupertinoButton(
                      color: Theme.of(context).colorScheme.background,
                      child: const Text(
                        "I got into an accident!",
                        style: TextStyle(color: Colors.white,),
                        textAlign: TextAlign.center,
                      ),

                      onPressed: () {
                        currentClaim = Claim();
                        Navigator.of(context).pushReplacementNamed('/Panic');
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20)),

            Container(
                width: 325,
                height: 390,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(93, 93, 93, 0.18),
                    border: Border.all(
                      color: const Color.fromRGBO(93, 93, 93, 0.18),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const LoginInfo()

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
                placeholderStyle: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))

                ),
                style: const TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
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
                placeholderStyle: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))

                ),
                style: const TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
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
                      currentClaim = Claim();
                      currentUserSelf = result;
                      Navigator.of(context).pushReplacementNamed('/Main');
                    }
                  }
              ),
            ),

            Container(
              height: 25,
            ),


            SizedBox(
              width: 250,
              child: CupertinoButton(
                  color: Theme.of(context).colorScheme.background,
                  child: const Text("Create Account", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                  onPressed: () async {
                    print(controllerPassSignIn.text + " - " + controllerUserSignIn.text);
                    currentUserSelf = await _auth.registerWithEmailAndPassword(controllerUserSignIn.text, controllerPassSignIn.text);
                    Navigator.of(context).pushReplacementNamed('/Main');
                  }
              ),
            ),
          ]
      ),
    );
  }


}
