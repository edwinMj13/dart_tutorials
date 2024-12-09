void main() {
  final car = Lion();
  print(car.animalKind);
  car.cry();
  car.sound();
  Lion lion = Lion();
  lion.sound();
  lion.cry();
  //print(dog.animalKind);
}

enum AnimalKind { dog, zebra, lion, tiger }

class Animal {
  final AnimalKind animalKind;
  Animal({required this.animalKind});
  void sound() {
    print("$animalKind is sounding");
  }

  void cry() {
    print("$animalKind is crying");
  }
}

class Dog extends Animal {

  Dog():super(animalKind: AnimalKind.dog);


}

class Lion implements Animal{
  @override
  // TODO: implement animalKind
  AnimalKind get animalKind => AnimalKind.lion;

  @override
  void cry() =>print("Lion is Grr");

  @override
  void sound() =>print("Lion is crying");

}
