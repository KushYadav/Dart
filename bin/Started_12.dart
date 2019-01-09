main(List<String> args) {
  var callClass = Car();
  var car = callClass(150, "Aston Martin");
  print(car);
}

class Car {
  String call(int speed, String name) {
    return "The car $name is running with $speed km/h";
  }
}
