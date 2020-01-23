import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/constants.dart';

class RectangleButton extends StatelessWidget {
  final text;
  final function;

  const RectangleButton({@required this.text, @required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: , TODO,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
        child: Text(
          text,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
