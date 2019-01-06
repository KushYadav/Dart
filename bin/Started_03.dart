main(List<String> args) {
  //If-Else

  var a = 10;
  if (a > 10) {
    print("Greater than 10");
  } else if (a < 10) {
    print("Smaller than 10");
  } else {
    print("Equal to 10");
  }

//Conditional Expressions

  (a >= 10) ? print("Greater than or equal to 10") : print("Smaller than 10");

  // var str = "Hello";  if String is equal to null then returns the substitute.
  var str;
  var getString = str ?? "String not found";
  print(getString);

//Swich-Case

  String grade = "A";
  switch (grade) {
    case "A":
      print("Excellent");
      break;
    case "B":
      print("Good");
      break;
    case "C":
      print("Average");
      break;
    case "D":
      print("Poor");
      break;
    case "F":
      print("Fail");
      break;
    default:
      print("Not Appeared");
  }
}
