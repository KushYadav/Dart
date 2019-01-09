main(List<String> args) {
/*
-> Arrays are known as LIST in dart.
-> In the list, elements are in sequence.
-> Fixed-Length list: Length once defined cannot be changed.
-> Growable list: Length is dynamic.
*/

//Fixed Length list.
  List<int> list1 = List(5); //Index: 0-4;
  list1[0] = 73;
  list1[1] = 33;
  list1[2] = 56;
  list1[3] = 45;
  list1[4] = 23;

  print(list1);

  for (int i in list1) {
    print(i);
  }

  list1.forEach((i) => print(i));

  for (int i = 0; i < list1.length; i++) {
    print(list1[i]);
  }
/*
-> cannot be performed at fixed length list
  list1.remove(45);
  list1.add(100);
  list1.clear();
  list1.removeAt(3);
*/

//Growable list
  List<int> list2 = List();
  list2.add(10);
  list2.add(20);
  list2.add(30);
  list2.add(40);
  list2.add(50);

  print(list2);
  list2.remove(20);
  list2.add(60);
  list2.add(70);
  print(list2);
  list2.clear();
  print(list2);

  List<String> list3 = ["USA", "INDIA", "RUSSIA"];
  list3.add("JAPAN");
  list3.add("BRAZIL");
  print(list3);

/*
SETS:
->Unordered collection of unique items.
->It does not contain duplicate elements.
->We cannot get elements by Index, since elements are unordered.

HASHSET:
-> Implementation of unordered set.
-> It is based on hash-table based set implementation.
*/

// SETS

  Set<String> set1 = Set.from(["USA", "INDIA", "RUSSIA"]); //or
  Set<int> set2 = Set();
  set2.add(10);
  set2.add(20);
  set2.add(10);

  for (int i in set2) {
    print(i);
  }
  set2.forEach((i) => print(i));

  print(set2.contains(10));
  set2.remove(10);
  print(set2);
  print(set2.length);

/*
MAP:
-> It is an unordered collection of key-value pair.
-> Key value can be any object type.
-> Each key should be unique but value can be repeated.
-> commonly called hash or ditionary.
-> size of map is not fixed, size can be increased or decreased as per the number of elements.
*/

  Map<String, int> points = Map();
  points["Spain"] = 6;
  points["Brazil"] = 7;
  points["Argentina"] = 3;

  Map<String, int> perks = {"Micheal": 13, "Ron": 91, "John": 53};

  print(points);
  print(perks);

  for (var keys in points.keys) {
    print(keys);
  }

  for (var values in points.values) {
    print(values);
  }

  points.forEach((key, value) => print("Key: $key and value: $value"));
  print(points.containsKey("Spain"));
  points.update("Argentina", (value) => 5);
  points.remove("Brazil");
  print(points);
}
