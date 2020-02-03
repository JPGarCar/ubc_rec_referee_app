class Team {
  String _teamName;
  int _score;
  int _timeOuts;

  Team({String teamName, int timeOuts}) {
    _teamName = teamName;
    _timeOuts = timeOuts;
    _score = 0;
  }

  String getTeamName() {
    return _teamName;
  }

  int getScore() {
    return _score;
  }

  int getTimeOuts() {
    return _timeOuts;
  }

  void removeTimeOut() {
    _timeOuts--;
  }

  void addToScore({int amount}) {
    _score += amount;
  }

  void decreaseScore({int amount}) {
    _score -= amount;
  }
}
