//Collections, stateful widgets, futures and streams
void main1() {
  List<String> fruits = ["apple", "orange"];
  print(fruits.runtimeType);

  //calls for the essence of generics List<>
  // fruits.add(true);
  // fruits.add(2);

  Map<int, String> employeeList = {
    1001: "John Doe",
    1002: "R Joanes",
  };
  //employeeList.addAll({'3003': true});
  print(employeeList);

  Repository userRepo = Repository<User>();
  Repository messageRepo = Repository<Message>();

}

//cases like this to avoid duplicity use of generics is key
class Repository<T> {
  getEntity(T entity) {
    print(entity.runtimeType);
  }
}


class User {
  String name;
  User(this.name);
}

class Message {
  String text;
  Message(this.text);
}
