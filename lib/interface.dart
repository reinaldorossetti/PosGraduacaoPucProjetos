interface class Vehicle {
  void moveForward(int meters) {
    print("Car moved forward $meters meters");
  }
}

class Car extends Vehicle {
  int passengers = 4;
  void passenger() {
    print("Car has ${this.passengers} passengers");
  }
}