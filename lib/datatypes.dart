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

}
