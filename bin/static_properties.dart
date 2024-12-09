void main() {
  print(Car.carInstantiated);
  Car(name: "My Car");
  print(Car.carInstantiated);
  Car(name: "My Car2 ");
  print(Car.carInstantiated);
}

class Car {
  static int _carInstantiated = 0;

  static int get carInstantiated => _carInstantiated;

  static void incrementInst() => _carInstantiated++;
  final String name;

  Car({required this.name}) {
    incrementInst();
  }
}
