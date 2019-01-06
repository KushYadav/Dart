main(List<String> args) {
  //for Loop
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  List list = ["Java", "Kotlin", "Dart"];
  for (String i in list) {
    print(i);
  }

  FirstLoop: //This is a Label
  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j < 10; j++) {
      if (i == 2) {
        continue;
      }
      if (i == 3) {
        break FirstLoop;
      }
      if (i == j) {
        print("Equal");
      }
    }
  }

//while Loop
  var i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }

//do-while Loop;
  i = 1;
  do {
    print(i);
    i++;
  } while (i <= 10);
}
