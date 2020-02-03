import 'dart:async';

class Clock {
  int _minutes;
  int _seconds;
  bool _isRunning;
  var _timer;

  Clock({int minutes, int seconds}) {
    _minutes = minutes;
    _seconds = seconds;
    _isRunning = false;
  }

  void endOfClock() {
    // TODO
  }

  void startTime({var function, var endFunction}) {
    _timer = Timer.periodic(new Duration(seconds: 1), (Timer timer) {
      if (_minutes == 0 && _seconds == 0) {
        endOfClock();
        endFunction;
      } else {
        decreaseTimeBySecond();
        function;
      }
    });
    _isRunning = true;
  }

  void stopTime() {
    _timer.cancel();
    _isRunning = false;
  }

  void decreaseTimeBySecond() {
    if (_seconds == 0) {
      _seconds = 60;
      _minutes -= 1;
    } else {
      _seconds -= 1;
    }
  }

  int getSeconds() {
    return _seconds;
  }

  int getMinutes() {
    return _minutes;
  }

  bool isRunning() {
    return _isRunning;
  }
}
