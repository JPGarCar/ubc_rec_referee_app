import 'package:flutter/material.dart';
import 'package:ubc_rec_refferee_app/components/allComponents.dart';

class NewGamePage extends StatefulWidget {
  @override
  _NewGamePageState createState() => _NewGamePageState();
}

class _NewGamePageState extends State<NewGamePage> {
  String field;
  String time;
  String teamOne;
  String teamTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: DropDownPack(
                    edgeInsetPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    label: "Field",
                    hint: "Choose a field",
                    // TODO extract list as constant
                    values: <String>["Woods", "Warren", "South"]
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    function: (newValue) {
                      setState(() {
                        field = newValue;
                      });
                    },
                    variable: field,
                  ),
                ),
                Expanded(
                  child: DropDownPack(
                    edgeInsetPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    label: "Time",
                    hint: "Choose a time",
                    // TODO extract list as constant
                    values: <String>["6:00 - 7:00 pm", "7:00 - 8:00 pm"]
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    function: (newValue) {
                      setState(() {
                        time = newValue;
                      });
                    },
                    variable: time,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Flexible(
                  child: DropDownPack(
                      hint: "Choose Team 1",
                      function: (newValue) {
                        setState(() {
                          teamOne = newValue;
                        });
                      },
                      variable: teamOne,
                      label: "Team 1:",
                      // TODO extract lists to constants
                      values: <String>["Woods", "Warren", "South"]
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList()),
                  fit: FlexFit.loose,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Flexible(
                  child: DropDownPack(
                      hint: "Choose Team 2",
                      function: (newValue) {
                        setState(() {
                          teamTwo = newValue;
                        });
                      },
                      variable: teamTwo,
                      label: "Team 2:",
                      // TODO extract list to constants
                      values: <String>["Woods", "Warren", "South"]
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList()),
                  fit: FlexFit.loose,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RectangleButton(
                    text: "Start",
                    function: null,
                    edgeInset: EdgeInsets.all(8),
                  ),
                ),
                Expanded(
                  child: RectangleButton(
                    text: "5 min Warm Up",
                    function: null,
                    edgeInset: EdgeInsets.all(8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DropDownPack extends StatelessWidget {
  final function;
  final variable;
  // list of DropdownMenuItem items
  final values;
  final hint;
  final label;
  final edgeInsetPadding;

  DropDownPack(
      {@required this.function,
      @required this.variable,
      @required this.label,
      @required this.hint,
      @required this.values,
      this.edgeInsetPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: edgeInsetPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            child: Text(label),
          ),
          Expanded(
            // TODO all the styling for the drop down
            child: DropdownButton<String>(
              value: variable,
              hint: Text(
                hint,
              ),
              icon: Icon(Icons.golf_course),
              items: values,
              onChanged: function,
              isExpanded: true,
            ),
          ),
        ],
      ),
    );
  }
}
