import '../lib/interface.dart';

// Can be constructed.
Vehicle myVehicle = Vehicle();

// ERROR: Can't be inherited.
class Car extends Vehicle {
  int passengers = 4;
  // ...
}

// Can be implemented.
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    print("Car SUV moved forward $meters meters");
  }
}

void main() {
  myVehicle.moveForward(10);

  MockVehicle mock = MockVehicle();
  mock.moveForward(20);
}