import 'package:flutter/cupertino.dart';
import 'package:utd_hackathon2021/UI/background.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Welcome to State Farm!',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 49,
                  fontFamily: "BebasNeue",
                ),
              textAlign: TextAlign.center,
            ),
            Container(height: 70),

            SizedBox(
              width: 275,
              height: 50,
              child: CupertinoButton(
                  color: Theme.of(context).colorScheme.primary,
                  child: const Text('File New Claim', style: TextStyle(color: Colors.white),),
                  onPressed: () {}
              ),
            ),
            Container(height: 50.0),
            SizedBox(
              width: 275,
              height: 50,
              child: CupertinoButton(
                  color: Theme.of(context).colorScheme.primary,
                  child: const Text('Log Out', style: TextStyle(color: Colors.white)),
                  onPressed: () {}
              ),
            )
          ],
        )
      ],

    );
  }
}