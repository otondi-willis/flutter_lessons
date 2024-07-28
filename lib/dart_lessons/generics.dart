void main() {
  List<String> fruits = ["apple", "orange"];
  print(fruits.runtimeType);

  //calls for the essence of generics List<>
  fruits.add(true);
  fruits.add(2);
}
