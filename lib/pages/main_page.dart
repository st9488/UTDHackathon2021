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
            Container(
              child: Text('Welcome to State Farm!',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 18
                )
              )
            ),
            Container(height: 70),
            Container(
              width: 275,
              height: 50,
              child: CupertinoButton(
                color: Theme.of(context).colorScheme.primary,
                  child: Text('File New Claim'),
                  onPressed: () {}
                  ),
            ),
            Container(height: 50.0),
            Container(
              width: 275,
              height: 50,
              child: CupertinoButton(
                  color: Theme.of(context).colorScheme.primary,
                  child: Text('See Previous Claims'),
                  onPressed: () {}
              ),
            ),
          ],
        )
      ],

    );
  }
}
