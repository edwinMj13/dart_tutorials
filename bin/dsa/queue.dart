import 'dart:collection';
/*
main(){
  Queue<int> queue = Queue<int>();
  queue.add(1);
  queue.add(2);
  queue.add(3);
  queue.add(4);
  queue.add(5);
  queue.forEach(print);
  queue.remove(2);
  print("\n");
  queue.forEach(print);
}*/

abstract class Animal{
  void run();
}
class Dog extends Animal{
  @override
  void run() {
    print("Run with 4 legs");
  }
}
class Rooster extends Animal {
  @override
  void run(){
    print('Run with 2 legs');
  }
}



void main(){
  Animal dog = Dog();
  Animal rooster = Rooster();

  dog.run();
  rooster.run();
}