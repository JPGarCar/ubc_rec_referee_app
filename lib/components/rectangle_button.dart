import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/constants.dart';

class RectangleButton extends StatelessWidget {
  final text;
  final function;
  final color;
  final edgeInset;

  const RectangleButton(
      {@required this.text,
      @required this.function,
      this.color = Colors.green,
      @required this.edgeInset});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: , TODO,
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(),
        margin: edgeInset,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Text(
          text,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
