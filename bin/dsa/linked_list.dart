/*import 'dart:collection';

final class Node extends LinkedListEntry<Node> {
  final int id;
  final String value;

  Node(this.id, this.value);

  @override
  String toString() {
    return "$id - $value";
  }
}

void main() {
  var list = LinkedList<Node>();
  list.add(Node(1, "Edwin"));
  list.add(Node(2, "Albin"));
  list.add(Node(3, "Baby"));
  list.add(Node(4, "Alphonsa"));
  print("Initial List - \n $list");

  insertAtPosition(list, 3, Node(35, "tr"));

  print("After List - \n $list");

  // list.first.insertAfter(Node(12, "Nancy"));
  //
  // print("Adding After First Element \n $list");
  //
  // list.last.insertAfter(Node(45, "Elizabeth"));
  // print("Adding After Last Element \n $list");
  //
  // list.first.insertBefore(Node(34, "Rajan"));
  // print("Adding Before First Element \n $list");
  //
  // list.last.insertBefore(Node(36, "Alan"));
  // print("Adding Before Last Element \n $list");
  //
  // print("First Element - ${list.first}");
  // print("Last Element - ${list.last}");
  //
  // print("Length of the linkedList is --- ${list.length}");
  //
  // print("Index of First Element --- ${list.elementAt(7)}");

  // list.first.unlink();
  // print("Removing First Elem $list");
  //
  // list.last.unlink();
  // print("Removing Last Elem $list");
  //
  // print("First Element - ${list.first}");
  // print("Last Element - ${list.last}");
}
//
// insertAtPosition(LinkedList<Node> list,int position,Node newNode){
//   if(position<0){
//     print("Position Cannot Be Negative");
//     return;
//   }
//
//   if(list.isEmpty || position ==0){
//     if(list.isEmpty){
//       list.add(newNode);
//     }else{
//       newNode.insertBefore(list.first);
//     }
//     return;
//   }
//   Node? current = list.first;
//   int index = 0;
//
//   while(current !=null && index < position-1){
//     current = current.next;
//     index++;
//     print("Current Itration Data $current");
//     print("Current Itration Index $index");
//   }
//
//   print("Current $current");
//
//   if(current == null){
//     print("current Null");
//     list.add(newNode);
//   }else{
//     print("Else current Null  $current");
//     newNode.insertAfter(current);
//   }
//
//   // if(index == position - 1){
//   //   newNode.insertAfter(current);
//   // }
//
// }

void insertAtPosition(LinkedList<Node> list, int position, Node newNode) {
  if (position < 0) {
    print("Position cannot be negative.");
    return;
  }

  if (list.isEmpty || position == 0) {
    // Insert at the beginning
    if (list.isEmpty) {
      list.add(newNode);
    } else {
      newNode.insertBefore(list.first);
      list.addFirst(newNode);
    }
    return;
  }

  Node? current = list.first;
  int index = 0;

  while (current != null && index < position - 1) {
    current = current.next;
    index++;
    print("Current $current");
  }
  print("Final node before insertion: $current");
  print("index: $index");

  if(current !=null && index == position-1){
    newNode.insertAfter(current);
    return;
  }

  if (current == null) {
    print("Position out of bounds. Adding at the end.");
    list.add(newNode);
  } else {
    print("Inserting after node: $current");
      newNode.insertAfter(current);
  }
}
*/

import 'dart:collection';

/*
final class Node extends LinkedListEntry<Node> {
  final int value;
  final String data;

  Node({required this.value, required this.data});

  @override
  String toString() => 'Node(value: $value, data: $data)';
}


void insertAtPosition(LinkedList<Node> list, int position, Node newNode) {
  if (position < 0) {
    print("Position cannot be negative.");
    return;
  }

  // Insert at the start if position is 0
  if (position == 0) {
    if (list.isEmpty) {
      list.add(newNode); // List is empty, add directly
    } else {
      newNode.insertBefore(list.first); // Insert before the first node
    }
    return;
  }

  // Start traversal
  Node? current = list.first;
  int index = 0;

  // Traverse until either reaching position - 1 or the end of the list
  while (current != null && index < position - 1) {
    print("At index $index: ${current.value}, ${current.data}");
    current = current.next;
    index++;
  }

// Debug: Checking final node before insertion
  if (current != null) {
    print("Final node before insertion: ${current.value}, ${current.data}");
    newNode.insertAfter(current);
  } else {
    print("Error: Reached null at index $index, position is out of bounds.");
  }
}


void main() {
  var list = LinkedList<Node>();
  list.add(Node(value: 1, data: "A"));
  list.add(Node(value: 2, data: "B"));
  list.add(Node(value: 3, data: "C"));

  print("Initial List:");
  list.forEach(print);

  // Debug example that inserts at a high index, potentially causing an issue
  addElementAfterPosition(list, 1, Node(value: 34,data: "data"));
  //insertBeforePosition(1, list, Node(67, "fghgh"));
  //insertAtLast(list, Node(647, "fgdvdvhgh"));
  //insertAtFirst(list, Node(47, "fgsxcxcdvdvhgh"));
  print("\nFinal List:");
  list.forEach(print);
}*/

/*
insertAfterPosition(int position,LinkedList list,Node newNode){
  list.elementAt(position-1).insertAfter(newNode);
}*/

void addElementAfterPosition(LinkedList list, int position,Node newNode) {
  if(list.isNotEmpty){
    if(position<=list.length && position>=0){
      //newNode.insertAfter(list.elementAt(position-1));
      list.elementAt(position-1).insertAfter(newNode);
    }else{
      list.add(newNode);
    }
  }else{
    print("List Null");
  }
}

/*
insertBeforePosition(int position,LinkedList list,Node newNode){
  list.elementAt(position-1).insertBefore(newNode);
}
insertAtLast(LinkedList list,Node newNode){
  list.last.insertAfter(newNode);
}
insertAtFirst(LinkedList list,Node newNode){
  list.first.insertBefore(newNode);
}*/


final class Node extends LinkedListEntry<Node>{
  final String data;

  Node({ required this.data});

  @override
  String toString() {
    return "Value - $data";
  }
}

void main(){
  var list = LinkedList<Node>();

  list.add(Node(data: "Edwin"));
  list.add(Node(data: "Baby"));
  list.add(Node(data: "Raj"));
  list.add(Node(data: "Mohan"));
  list.add(Node(data: "Unni"));
  print("Initial Data\n");
  list.forEach(print);

  deleteAtPosition(5,list);

  addElementAfterPosition(list,2,Node(data: "qwerty"));

  print("After Data\n");
  list.forEach(print);

}
/*
void addElementAfterPosition(LinkedList list, int position,Node newNode) {
  if(list.isNotEmpty){
    if(position<=list.length && position>=0){
      //newNode.insertAfter(list.elementAt(position-1));
      list.elementAt(position-1).insertAfter(newNode);
    }else{
      list.add(newNode);
    }
  }else{
    print("List Null");
  }
}
*/
deleteAtPosition(int position, LinkedList<Node> list){
  if(list.isNotEmpty ) {
    if (position>=0 && position<=list.length) {
      list.elementAt(position - 1).unlink();
    }else{
      print("Element Out Of Bound");
    }
  }else{
    print("List Null");
  }
}

