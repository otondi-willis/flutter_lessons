void main(List<String> args) {
  print("Hello world");
  printCost(10.5, "Chocolate Bar");
}

void printCost(double price, String itemName) {//arguments are not optional
  print("The cost of $itemName is: $price"); 
}
