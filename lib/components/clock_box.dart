import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/constants.dart';

class ClockBox extends StatelessWidget {
  final int minutes;
  final int seconds;
  final double size;

  ClockBox(
      {@required this.minutes, @required this.seconds, @required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black),
      ),
      constraints: BoxConstraints.expand(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            minutes == 0 ? "00" : minutes.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: size),
          ),
          Text(
            ":",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: size),
          ),
          Text(
            seconds == 0 ? "00" : seconds.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: size),
          ),
        ],
      ),
    );
  }
}
