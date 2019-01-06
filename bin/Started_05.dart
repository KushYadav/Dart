main(List<String> args) {
  //Functions

  /*
  -> Functions are also objects.
  -> Fuctions can be passes as parameter in another function.
  -> If no return type is given by default it is null.
  */
  printArea(10, 20);
  print(getArea(10, 20));
  printPerimeter(10, 20);
  printPerimeter(10, 20);
  printValues(10, 20);
  print(volume(10, breadth: 20, height: 40));
  print(volume(10, height: 40, breadth: 20));
  print(surfaceArea(10, 20));
}

// -> Types of Parameters: Required and Optional

// 1) Required Parameters:

void printArea(int length, int breadth) {
  print(length * breadth);
}

void printPerimeter(int length, int breadth) => print(2 * (length + breadth));

int getPerimeter(int length, int breadth) => 2 * (length + breadth);

int getArea(int length, int breadth) => length * breadth;

// 2) Optional Parameters :

// Optional positional Paremeter
void printValues(int a, int b, [int c]) {
  print(a);
  print(b);
  print(c);
}

// Optional named Parameter: sequence doesn't matter
int volume(int length, {int breadth, int height}) => length * breadth * height;

// Optinal default paramter
int surfaceArea(int length, int breadth, {int height = 40}) =>
    2 * (length + breadth + height);
