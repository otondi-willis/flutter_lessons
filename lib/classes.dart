void main(List<String> args) {
  Person learner = new Person("Willis", 10);
  Person learner2 = new Person("Okoth", 34);
  Person learner3 = new Person("Okay", 30);

  learner2.updateLivingStatus = true;
  print(learner2._isAlive);
}

class Person {
  final String name;
  int age;
  bool _isAlive = true;

  bool get livingStatus {
    return _isAlive;
  }

  set updateLivingStatus(bool status) {
    _isAlive = status;
  }

  Person(this.name, this.age);
}
