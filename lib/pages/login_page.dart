import 'package:flutter/cupertino.dart';
import 'package:utd_hackathon2021/UI/background.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return Stack (
      alignment: Alignment.center,
      children: [
        Background(),

        Column(
          children: [
            Text(
              "Claim"
            )
          ],
        ),
      ],
    );
  }
}