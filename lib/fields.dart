enum Fields {
  woods,
  warren,
  south,
}

String toString(Fields f) {
  switch (f) {
    case Fields.south:
      return "South";
    case Fields.warren:
      return "Warren";
    case Fields.woods:
      return "Woods";
  }
  return "";
}
