void main(){
print(Vehicle.car());
print(Vehicle.truck());
}

class Vehicle{
const Vehicle();
factory Vehicle.car() => Car();

factory Vehicle.truck() => Truck();
}

class Car extends Vehicle{
  const Car();
}

class Truck extends Vehicle{
  const Truck();
}