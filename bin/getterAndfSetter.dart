void main() {
  final person = Person(firstName: "Edwin", lastName: "Baby");
  print(person.fullName);
  final car = Car();
  try{
    car.drive(speed: 10);
    car.drive(speed: -1);
  }catch(e){
    print(e);
  }
}

// class Person {
//   final String firstName;
//   final String lastName;
//   final String fullName;
//
//   Person({
//     required this.firstName,
//     required this.lastName,
//   }) : fullName = "$firstName $lastName";
// }
// getter
class Person {
  final String firstName;
  final String lastName;
  String get fullName => "$firstName $lastName";

  Person({
    required this.firstName,
    required this.lastName,
  });
}


class Car {
  int _speed =0;
  int get speed => _speed;
  set speed(int newSpeed){
    if(newSpeed<0){
      throw Exception("Speed Cannot Be Negative");
    }
    _speed = newSpeed;
  }

  void drive({required int speed}){
    this.speed = speed;
    print("Accelerating to $speed km/h");
  }

  void stop(){
    speed = 0;
    print("Stopping");
    print("Stopped");
  }
}