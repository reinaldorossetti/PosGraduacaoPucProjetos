class Person {
  String name;

  Person(this.name);
}

mixin Logging on Person {
  void log(String message) {
    print('Log: $name says $message');
  }
}

class User extends Person with Logging {
  User(String name) : super(name);

  void greet() {
    log('Hello!');
  }
}

void main() {
  final user = User('Alice');
  user.greet();
}
