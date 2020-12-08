import 'package:flutter/material.dart';

class RepeatTextandIcon extends StatelessWidget {
  RepeatTextandIcon({@required this.iconData, this.label});
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 85.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.deepOrangeAccent,
          ),
        ),
      ],
    );
  }
}
