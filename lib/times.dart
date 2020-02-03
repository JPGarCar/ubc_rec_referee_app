enum Times {
  t6_7,
  t7_8,
  t8_9,
  t9_10,
  t10_11,
}

String toString(Times t) {
  switch (t) {
    case Times.t6_7:
      return "6:00 to 7:00";
    case Times.t7_8:
      return "7:00 to 8:00";
    case Times.t8_9:
      return "8:00 to 9:00";
    case Times.t9_10:
      return "9:00 to 10:00";
    case Times.t10_11:
      return "10:00 to 11:00";
  }
  return "";
}
