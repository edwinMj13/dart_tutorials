void main(){
  final animal = Animal.animal("bird");
  print(animal.animal);
  print(animal.bird);
  /*final v = Vehicle(4);
  print(v);

  print(Bicycle());
  print(Car());
*/
}
/*
class Vehicle{
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override
  String toString() {
    return "$runtimeType has $wheelCount";
  }
}

class Car extends Vehicle {
  const Car():super(4);
}

class Bicycle extends Vehicle {
  const Bicycle():super(2);
}

*/

class Animal{
  final String animal;
  final String bird;
  Animal.animal(this.bird) : animal = "animal";
}