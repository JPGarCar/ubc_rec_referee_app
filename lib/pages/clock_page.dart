import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/components/allComponents.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              // TODO get that clock
              child: Text("Clock"),
            ),
            Expanded(
              child: RectangleButton(
                text: "Start Half",
                function: () {
                  Navigator.pop(context);
                },
                edgeInset: EdgeInsets.all(10),
              ),
            ),
            Expanded(
              child: RectangleButton(
                  text: "Start 5 min Break",
                  function: () {
                    Navigator.pop(context);
                  },
                  edgeInset: EdgeInsets.all(10)),
            ),
            Expanded(
              child: RectangleButton(
                text: "Done",
                function: () {
                  Navigator.pop(context);
                },
                edgeInset: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
