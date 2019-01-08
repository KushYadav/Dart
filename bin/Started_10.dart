main(List<String> args) {
  //Lambda Function
  Function add = (int a, int b) {
    print(a + b);
  };

  Function sub = (int a, int b) {
    return a - b;
  };

  Function mul = (int a, int b) => print(a * b);
  Function div = (int a, int b) => print(a / b);

  //Calling lambda functions
  add(2, 3);
  print(sub(4, 2));
  mul(4, 2);
  print(div(9, 2));

/*Higher Order function
-> Can accept function as parameter.
-> Can return a function.
-> or Can do both.
*/
  int squareFunction(int a, Function func) {
    func;
    return a * a;
  }

  Function mulFour() {
    Function f = (int a) => a * 4;
    return f;
  }

//Calling Higher order functions
  print(squareFunction(4, add(5, 2)));
  Function get = mulFour();
  print(get(10));

/* Closures
-> It is a special function
-> Within a closure we can modify the values of variables present in the parent scope.
-> A closure is a function that has access to the parent scope even after the the scope has closed.
-> A closure is a function object that has accesss to variables in its lexical scope,
   even when the function is used outside of its original scope.
*/
  String str1 = "This is a String";

  Function change = () {
    str1 = "String is modified";
    print(str1);
  };

  Function outSide = () {
    String str2 = "Old String";
    Function inside = () {
      str2 = "New String";
      print(str2);
    };
    return inside();
  };

  change();
  outSide();
}
