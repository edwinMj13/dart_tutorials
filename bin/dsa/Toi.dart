// Trie
/*
class TrieNode{
  Map<String,TrieNode> children = {};
  bool isLast = false;
}

class Trie{
  TrieNode root = TrieNode();
  
  insert(String data){
    TrieNode currentNode = root;
    for(int i=0;i<data.length;i++){
      String char = data[i];
      currentNode.children.putIfAbsent(char,()=> TrieNode());
      currentNode = currentNode.children[char]!;
    }
    currentNode.isLast = true;
  }
  
  List<String> searchPrefixFilter(String prefix){
    TrieNode currentNode = root;
    for(int i= 0;i<prefix.length;i++){
      String char = prefix[i];
      if(!currentNode.children.containsKey(char)){
        return [];
      }
      currentNode =currentNode.children[char]!;
    }
    List<String> results = [];
    dfsSearch(currentNode,prefix,results);
    return results;
  }

  void dfsSearch(TrieNode currentNode, String prefix, List<String> results) {
    if(currentNode.isLast){
      results.add(prefix);
    }
    for(var char in currentNode.children.keys){
      dfsSearch(currentNode.children[char]!, prefix+char, results);
    }
  }
}

void main(){
  Trie trie = Trie();
  trie.insert("Edwin");
  trie.insert("Edward");
  trie.insert("Edwinson");
  trie.insert("Edin");
  print(trie.searchPrefixFilter("Edi"));
}

*/

//Binary Tree
/*
class Node{
  final int data;
  Node? left,right;

  Node({required this.data});

}

class BinaryTree{
  Node? root;


  insertHelper(int data){
   root = insertData(data,root);
  }

  insertData(int data, Node? root){
    Node newData = Node(data: data);
    if(root==null){
      root = newData;
    }else{
      if(data<root.data){
        root.left = insertData(data, root.left);
      }else if(data>root.data){
        root.right = insertData(data, root.right);
      }
    }
    return root;
  }
  displayNode(){
    display(root);
  }
  display(Node? node){
    if(node!=null){
      display(node.left);
      print(node.data);
      display(node.right);
    }
  }
}

void main(){
  BinaryTree tree = BinaryTree();
  tree.insertHelper(10);
  tree.insertHelper(11);
  tree.insertHelper(12);
  tree.insertHelper(13);
  tree.insertHelper(14);
  tree.insertHelper(15);
  tree.insertHelper(16);


  tree.displayNode();
}
*/

// Binary Tree validation
/*
class Node{
  int data;
  Node? right,left;
  Node(this.data);
}

class BinaryTree{
  Node? root;

  checkBst(Node root){
    List<int> list = [];
    validateBst(list,root);
    for(int i =0;i<list.length-1;i++){
      if(list[i]>list[i+1]) {return false;}
    }
    return true;
  }

  void validateBst(List<int> list, Node? root) {
    if(root!=null){
      validateBst(list, root.left);
      list.add(root.data);
      validateBst(list, root.right);
    }
  }
  display(Node? roo){
    if(roo!=null){
      display(roo.left);
      print(roo.data);
      display(roo.right);
    }
  }
}

void main(){
  Node root = Node(10);
  root.right = Node(11);
  root.left = Node(9);
  root.right!.right = Node(13);
  root.right!.left = Node(12);
  root.left!.left = Node(7);
  root.left!.right = Node(8);

  BinaryTree tree = BinaryTree();
  tree.display(root);
  print(tree.checkBst(root));
}
*/

// In Built Linked-List
import 'dart:collection';

base class Node extends LinkedListEntry<Node> {
  final int value;

  Node({required this.value});

  @override
  String toString() {
    return "value $value";
  }
}

void main() {
  var list = LinkedList<Node>();

  list.add(Node(value: 10));
  list.add(Node(value: 30));
  list.add(Node(value: 15));
  list.add(Node(value: 45));
  list.add(Node(value: 65));
  list.add(Node(value: 12));
  list.add(Node(value: 36));
  list.add(Node(value: 3));
  list.forEach(print);

  addToPosition(3, 400, list);
  print("adding to Position");

  list.forEach(print);

  addToMiddle(4000, list);
  print("\nadding to Middle");

  list.forEach(print);
}

void addToMiddle(int value, LinkedList<Node> list) {
  int size = list.length;
  print("Size - $size");
  int middle = size~/2;
  Node newNode = Node(value: value);
  print(middle);
  list.elementAt(middle).insertBefore(newNode);
}

void addToPosition(int position, int value, LinkedList<Node> list) {
  Node newNode = Node(value: value);
  list.elementAt(position - 1).insertBefore(newNode);
}
