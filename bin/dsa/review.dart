import 'dart:collection';

void main() {
 // pallindrome("edwin");
  convert([1,2,3,4,5]);
}
convert(List<int> list){
  var linkedList = LinkedList<Node>();
  for(int i=0;i<list.length;i++){
    linkedList.add(Node(data: list[i]));
  }
  linkedList.forEach(print);
}

final class Node extends LinkedListEntry<Node>{
  final int data;

  Node({required this.data});

  @override
  String toString() {
    return "$data";
  }
}

void pallindrome(String str) {
  var reversed = "";
  for (int i = str.length - 1; i >= 0; i--) {
    reversed = "$reversed${str[i]}";
  }
  if (str == reversed) {
    print("its Pallindromme");
  } else {
    print("Its Not Pallindrome");
  }
}
