main(List<String> args) {
//Variables

  int a = 10;
  double d = 99.99;
  bool isTrue = false;
  String str = "Hello";

  var b = 10;
  var e = 99.99;
  var isFalse = true;
  var sub = "World";

  int hex = 0xABDF3ABA;
  double exp = 12e2;
  print(hex);
  print(exp);

/*
-> We and use the datatype name or can use 'var'.
-> All the datatypes in dart are objects hence their default value is null.
*/

//Strings

  String str1 = "Hello World"; //='Hello Worldl'
  String str2 = 'It\'s a nice lang';
  String str3 =
      'This is a long is a long is a long is a long is a long is a long is a long is a long'
      'string';
  String str4 = "Sum is " + str1;
  String str5 = "Sum is $str1";
  print(str5.length.toString());
  int first = 10;
  int second = 20;
  print("The sum of $first and $second is ${first + second}");

// final & constant

  final name = "SpaceHunt";
  const PI = 3.14;

/*
-> final variable can only be set once and it is initialised when accessed. {Memory will only be allocated when it is used in program}
-> const variable is implicitly final but it is a compile time constant i.e. it is initialised during compilation. {Memory will be used even if it is not used in program}
-> Instance variable can be final but cannot const.
-> If want a const at class level make it static.
*/
}

class dog {
  final legs = 4;
  // const ears = 2; Throws Error
  static const ears = 2;
}
