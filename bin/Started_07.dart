main(List<String> args) {
// var car = new Car(); or var car = Car();

/* var car1 = Car(); // Creating an object of car. 
  car1.name = "Aston Martin";  //Here name is a reference variable.
  car1.speed = 240;
  car1.start();
  car1.running();
  car1.stop();
*/

  var car2 = Car("Tesla", 200);
  car2.start();
  car2.running();
  car2.stop();

  var car3 = Car.customConstructor();
  car3.name = "Bugati";
  car3.speed = 400;
  car3.start();
  car3.running();
  car3.stop();

  var car4 = Car.anotherCustomConstructor("Tata", 100);
  car4.start();
  car4.running();
  car4.stop();
}

class Car {
  //Instance variables
  int speed;
  String name;

// Default constructor
/* Car() {
    print("This is a default constructor");
  }
-> A class cannot have two or more constructors together
*/

// Parameterized contructor
  Car(this.name, this.speed);

/* Car(String name, int speed) {
    this.speed = speed;
    this.name = name;
  }
-> This is a larger version the above line of code.
*/

// Named Constructor
  Car.customConstructor() {
    print("This is a custom constructor");
  }

  Car.anotherCustomConstructor(this.name, this.speed) {
    print("Another custom constructor");
  }

//Class functions
  void start() {
    bool start = true; // Local variable.
    print("The car has started running.");
  }

  void running() {
    print("Car $name running with $speed km/h");
  }

  int stop() {
    print("The car has stopped.");
  }
}
