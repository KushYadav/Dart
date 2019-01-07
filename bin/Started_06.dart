main(List<String> args) {
// When we know the type of Exception we use 'on' clause.
  try {
    int val = 12 ~/ 0;
    print(val);
  } on IntegerDivisionByZeroException {
    print("Cannot divide by Zero");
  }

// When we don't know the Exception we use 'CATCH' Clause.
  try {
    int val = 12 ~/ 0;
    print(val);
  } catch (e) {
    print("The exception thrown is: $e");
  }

// Using STACK TRACE to know the events occurred before Exception was thrown
  try {
    int val = 12 ~/ 0;
    print(val);
  } catch (e, s) {
    print("The exception thrown is: $e");
    print("STACK TRACE\n$s");
  }

// Whether there is Exception of not, FINALLY clause is always executed
  try {
    int val = 12 ~/ 0;
    print(val);
  } catch (e) {
    print("The exception thrown is: $e");
  } finally {
    print("This Finally clause will always be executed");
  }

// CUSTOM EXCEPTION HANDLING
  try {
    addAtIndex(-2);
  } catch (e) {
    print(e.errorMessage());
  }
}

//Custom Exception Class
class indexException implements Exception {
  String errorMessage() {
    return "Index cannot be less than zero";
  }
}

void addAtIndex(int idx) {
  if (idx < 0) {
    throw new indexException();
  }
}
