import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utd_hackathon2021/UI/background.dart';

class TipsPage extends StatefulWidget{
  const TipsPage({Key? key}) : super(key: key);
  @override
  State<TipsPage> createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage>{
  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return Stack(
        children:[
          const Background(),
          Text("data")
        ]
    );
  }
}