void main(List<String> args) {
  print("Hello world");
  printCost(10.5, "Chocolate Bar");
  printCost1("Willis",10.5);
}

void printCost(double price, String itemName) {//arguments are not optional
  print("The cost of $itemName is: $price"); 
}
void printCost1(String name, double? price, [String? itemName]) {//arguments are  optional
  print("Hey $name the cost of $itemName is: $price"); 
}
