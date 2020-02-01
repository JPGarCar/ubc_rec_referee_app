import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/components/allComponents.dart';
import 'package:ubc_rec_refferee_app/constants.dart';

class TimeOutPage extends StatefulWidget {
  @override
  _TimeOutPageState createState() => _TimeOutPageState();
}

class _TimeOutPageState extends State<TimeOutPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        margin: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ClockBox(
                minutes: 1,
                seconds: 00,
                size: 130,
              ),
            ),
            Expanded(
              child: RectangleButton(
                text: "Start",
                function: null,
                edgeInset: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              ),
            ),
            Expanded(
              child: RectangleButton(
                text: "End Time Out",
                function: () {
                  Navigator.pop(context);
                },
                edgeInset: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              ),
            ),
            Expanded(
              child: Row(
                // TODO change constant values to accurate values
                children: <Widget>[
                  Expanded(
                    child: TimerTeamScore(teamName: "Team One", score: 20),
                  ),
                  Expanded(
                    child: TimerTeamScore(teamName: "Team Two", score: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
