import 'package:flutter/cupertino.dart';

class PlusItem extends StatelessWidget {
  const PlusItem({Key? key, required this.who}) : super(key: key);

  final String who;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 20,
      child: Row(
        children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
          const Icon(CupertinoIcons.plus),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
          Text(who)
        ],
      ),
    );
  }
}