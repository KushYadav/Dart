main(List<String> args) {
// Getters and Setters
  Car car1 = Car();
  car1.name = "Aston Martin"; //Calling the Default setter.
  print(car1.name); // Calling the Default setter.
  car1.perMonthEMI = 4000000;
  print(car1.perMonthEMI);

/* Inheritance: Mechanism through which one object acquires properties of its parent class object. 

-> Single Inheritance: Class B -> Class A -> Object
-> Multi-Level Inheritance: Class C -> Class B -> Class A -> Object
-> Hierarchial Inheritance: Class B -> Class A and Class C -> Class A -> Object

-> Super class of any class is Obejct and provides default implementation of:
 # toString(): String representation of Object.
 # hashCode: getter, returns the hashcode of the object.
 # operator ==: to compare two objects.

 -> Advantages of Inheritance: Code Reusability, Method overriding and cleaner code as no repeatation.
*/

  var dog = Dog();
  dog.doesFly = false;
  dog.legs = 4;
  dog.startEating();
  dog.startBarking();

  var cat = Cat();
  cat.doesFly = false;
  cat.legs = 4;
  cat.startEating();
  cat.startMeowing();
}

class Car {
  String name; //Instance variable with Default Getter and Setter.
  int speed;
  int EMI;

//Instance variable with custom getter and Setter;

  void set perMonthEMI(int price) => EMI = price ~/ 60;
/* void set perMonthEMI(int price) {
    EMI = price ~/ 60;
  }
  -> Larger version of above written line of code.
*/

  int get perMonthEMI => EMI;

/* int get perMonthEMI {
    return EMI;
  }
  -> Larger version of above written line of code.
*/
}

class Animal {
  bool doesFly;
  int legs;

  Animal(bool carnivorous) {
    print("Constructor of Animal class");
  }
  void startEating() {
    print("Animal has started eating.");
  }

  Animal.namedConstructor() {
    print("Named constructor of Animal class.");
  }
}

class Dog extends Animal {
  void startBarking() {
    print("Dog has started barking.");
  }

  Dog() : super(false) {
    print("Constructor of Dog class.");
  }

  Dog.namedConstructor() : super.namedConstructor() {
    print("Named Constructor of Dog class.");
  }

//Method overriding: Method by which a child class redefines a method in its parent class.
  void startEating() {
    super.startEating(); //Running the parent method.
    print("Dog has started eating"); //Running the overridden method.
  }
}

class Cat extends Animal {
  Cat() : super(false) {
    print("Constructor of Cat class");
  }

  void startMeowing() {
    print("Cat has started Meowing.");
  }
}

/*
-> By deafult constructor in a subclass calls the superclass's no arguement constructor.
-> Parent class constructor called before child class constructor.
-> If default constructor is missing in psrent class, then you must manually call one of the constructors in super class.
*/
