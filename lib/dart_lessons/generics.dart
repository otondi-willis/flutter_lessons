void main() {
  List<String> fruits = ["apple", "orange"];
  print(fruits.runtimeType);

  //calls for the essence of generics List<>
  // fruits.add(true);
  // fruits.add(2);

  Map<int, String> employeeList = {
    1001: "John Doe",
    1002: "R Joanes",
  };
  employeeList.addAll({'3003': true});
  print(employeeList);
}
