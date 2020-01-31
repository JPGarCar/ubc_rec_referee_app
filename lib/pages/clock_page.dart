import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/components/allComponents.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      constraints: BoxConstraints.expand(),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Text("Clock"),
          ),
          Expanded(
            child: RectangleButton(
              text: "Start Half",
              function: null,
              edgeInset: EdgeInsets.all(10),
            ),
          ),
          Expanded(
            child: RectangleButton(
                text: "Start 5 min Break",
                function: null,
                edgeInset: EdgeInsets.all(10)),
          ),
          Expanded(
            child: RectangleButton(
              text: "Done",
              function: null,
              edgeInset: EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
