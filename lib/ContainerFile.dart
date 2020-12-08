import 'package:flutter/material.dart';

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors, this.CardWidget, this.onPressed});
  final Color colors;
  final Widget CardWidget;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: CardWidget,
        decoration: BoxDecoration(
          color: Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
