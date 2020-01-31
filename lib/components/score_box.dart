import 'package:flutter/material.dart';

class ScoreBox extends StatelessWidget {
  final score;

  ScoreBox({this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        score.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 55,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black),
      ),
      constraints: BoxConstraints.expand(),
      alignment: Alignment.center,
    );
  }
}
