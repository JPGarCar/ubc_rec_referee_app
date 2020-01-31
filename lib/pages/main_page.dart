import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/constants.dart';
import 'package:ubc_rec_refferee_app/components/allComponents.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Point Grey Flag Football League",
                        style: kTitleTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 25),
                      Text(
                        "This is the official referee application for flag football !!",
                        style: kSubTitleTextStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: RectangleButton(
                        edgeInset: EdgeInsets.all(20),
                        text: "New Game",
                        function: null,
                      ),
                    ),
                    Expanded(
                        child: RectangleButton(
                      edgeInset: EdgeInsets.all(20),
                      text: "Game History",
                      function: null,
                    )),
                    Expanded(
                      child: RectangleButton(
                        edgeInset: EdgeInsets.all(20),
                        text: "Timer",
                        function: null,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
