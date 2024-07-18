void main() {
  //Lists
  List<String>? bookTitles = ["Book 1", "Book 2", "Book 3"];
  //bookTitles.add(2);
  print(bookTitles.length); // list of dynamic(can hold a value of any datatype)

  //map
  Map<String, String>? bookDetails = {
    "Book 1": "Author 1",
    "Book 2": "Author 2",
    "Book 3": "Author 3"
  };
  print(bookDetails); // map of fixed datatype(both key and value)

  //var vs dynamic

  dynamic price = 40.5; //type assigned depending on the value stored
  price = 'c';
  price = "Hello there";
  print(price);

  var bei = 10.0; //type assigned by the compiler once and it sticks
  
  print(bei);
}
