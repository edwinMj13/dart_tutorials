import 'dart:collection';

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
}