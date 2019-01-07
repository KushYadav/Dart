main(List<String> args) {
/* 
Abstract Method: 
-> To make a method, use a semi colon instead of putting the method body.
-> Abstract method can only exist in abstract class.
-> Abstract methods are needed to override in sub-class;

Abstract Class:
-> use 'abstract' keyword to make any class abstract.
-> It can have instance variable, normal methods and abstract methods.
-> The abstract class cannot be instantiated.
*/
  var rectangle = Rectangle();
  rectangle.startDrawing();
  rectangle.Drawing();
  rectangle.stopDrawing();

/*
 INTERFACES
-> Dart does not have any special syntax to declare INTERFACE.
-> An interface in dart is a normal class.
-> An INTERFACE is used when a concrete implementation of all the functions of class within it's subclass is needed.
-> Through implements, multiple classes can be inherited unlike extends than only inherit a single class.
*/

  var laptop = Laptop();
  laptop.left();
  laptop.right();
  laptop.up();
  laptop.up();

/*
 STATIC KEYWORDS:
-> Static variables are also known as Class variables.
-> Static methods are also known as Class methods.
-> static variable are not initialized until not intialized, hence consumes memory only when they are used.
-> 'this' keyword cannot be used in static methods.
-> only static members can be accessed inside static methods.
*/
  print(Circle.calculateArea(10));
}

abstract class Shape {
  int area;
  void startDrawing();
  void Drawing() {
    print("Drawing.");
  }

  void stopDrawing();
}

class Rectangle extends Shape {
  void startDrawing() {
    print("Started Drawing Rectangle.");
  }

  void stopDrawing() {
    print("Stop Drawing Rectangle.");
  }
}

class ControllerA {
  void left() {
    print("Left Pressed");
  }

  void right() {
    print("Right Pressed");
  }
}

class ControllerB {
  void up() {
    print("Up Pressed");
  }

  void down() {
    print("Down Pressed");
  }
}

class Laptop implements ControllerA, ControllerB {
  void left() {
    print("Left Pressed");
  }

  void right() {
    print("Right Pressed");
  }

  void up() {
    print("Up Pressed");
  }

  void down() {
    print("Down Pressed");
  }
}

class Circle {
  static double PI = 3.14;
  static double calculateArea(int radius) => PI * radius * radius;
}
