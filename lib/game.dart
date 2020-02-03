import 'package:ubc_rec_refferee_app/clock.dart';
import 'package:ubc_rec_refferee_app/fields.dart';
import 'package:ubc_rec_refferee_app/team.dart';
import 'package:ubc_rec_refferee_app/team.dart';
import 'package:ubc_rec_refferee_app/times.dart';

class Game {
  Fields _field;
  Times _time;
  Clock _clock;
  Team _teamOne;
  Team _teamTwo;

  Game({Fields fields, Times times, String teamOne, String teamTwo}) {
    _field = fields;
    _time = times;
    _teamOne = new Team(teamName: teamOne, timeOuts: 2);
    _teamTwo = new Team(teamName: teamTwo, timeOuts: 2);
    _clock = new Clock(minutes: 20, seconds: 0);
  }

  Game.withTime(
      {Fields fields,
      Times times,
      String teamOne,
      String teamTwo,
      int seconds,
      int minutes}) {
    _field = fields;
    _time = times;
    _teamOne = new Team(teamName: teamOne, timeOuts: 2);
    _teamTwo = new Team(teamName: teamTwo, timeOuts: 2);
    _clock = new Clock(minutes: minutes, seconds: seconds);
  }

  String getField() {
    return _field.toString();
  }

  String getTime() {
    return _time.toString();
  }

  int getMinutes() {
    return _clock.getMinutes();
  }

  int getSeconds() {
    return _clock.getSeconds();
  }

  int getScore({int team}) {
    switch (team) {
      case 1:
        return _teamOne.getScore();
        break;
      case 2:
        return _teamTwo.getScore();
        break;
      default:
        return 0;
    }
  }

  void addScore({int team, int amount}) {
    switch (team) {
      case 1:
        _teamOne.addToScore(amount: amount);
        break;
      case 2:
        _teamTwo.addToScore(amount: amount);
        break;
    }
  }

  void decreaseScore({int team, int amount}) {
    switch (team) {
      case 1:
        _teamOne.decreaseScore(amount: amount);
        break;
      case 2:
        _teamTwo.decreaseScore(amount: amount);
        break;
    }
  }

  void callTimeOut({int team}) {
    switch (team) {
      case 1:
        _teamOne.removeTimeOut();
        break;
      case 2:
        _teamTwo.removeTimeOut();
        break;
    }
  }

  void startClock() {
    // TODO
  }

  void stopClock() {
    // TODO
  }

  void changeClock({int minutes, int seconds}) {
    // TODO
  }
}
