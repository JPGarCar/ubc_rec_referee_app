import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/components/allComponents.dart';

class TimerTeamScore extends StatelessWidget {
  final teamName;
  final score;

  TimerTeamScore({@required this.teamName, @required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Text(
                teamName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            flex: 3,
            child: ScoreBox(
              score: score.toString(),
            ),
          ),
        ],
      ),
    );
  }
}
