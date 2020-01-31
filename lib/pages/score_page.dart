import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/components/allComponents.dart';

class ScorePage extends StatefulWidget {
  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text("Team name"),
            ),
          ),
          Expanded(
            child: ScoreBox(
              score: 20,
            ),
          ),
          Expanded(
            child: RectangleButton(
              text: "Touch Down",
              function: null,
              edgeInset: EdgeInsets.all(10),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RectangleButton(
                    text: "1-Point",
                    function: null,
                    edgeInset:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  ),
                ),
                Expanded(
                  child: RectangleButton(
                    text: "2-Points",
                    function: null,
                    edgeInset:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RectangleButton(
                    text: "-1",
                    function: null,
                    edgeInset: EdgeInsets.all(8),
                  ),
                ),
                Expanded(
                  child: RectangleButton(
                    text: "-2",
                    function: null,
                    edgeInset: EdgeInsets.all(8),
                  ),
                ),
                Expanded(
                  child: RectangleButton(
                    text: "-6",
                    function: null,
                    edgeInset: EdgeInsets.all(8),
                  ),
                ),
                Expanded(
                  child: RectangleButton(
                    text: "-7",
                    function: null,
                    edgeInset: EdgeInsets.all(8),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RectangleButton(
              text: "Done",
              function: null,
              edgeInset: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
            ),
          ),
        ],
      ),
    );
  }
}
