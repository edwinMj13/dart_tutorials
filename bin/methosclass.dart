void main(){
final car = Car();
car.drive(speed: 10);
car.drive(speed: 35);
car.stop();
}

class Car {
  int speed = 0;

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