import 'dart:collection';



future(List<int> val){
  for(int i=0;i<val.length;i++){
    int j=i+1;
    for(j;j<val.length;j++){
      print("${val[i]} $i - ${val[j]} $j");

      if(val[i]<val[j]){
        break;
      }
      // if(val[i]>=val[j]){
      //   print("Condition ${val[i]}");
      // }
    }
    if (j == val.length)
      print("Condition - ${val[i]}");
  }
}
void main(){
  future([16, 17, 4, 3, 5, 2]);

  /*
  BT
  BinaryTree tree = BinaryTree();
  tree.insert(12);
  tree.insert(16);
  tree.insert(17);
  tree.insert(3);
  tree.insert(1);
  tree.insert(2);
  tree.insert(126);
  tree.insert(123);
  tree.display();*/
  /*
  BST
  Node root = Node(data: 3);
  root.left = Node(data: 1);
  root.left!.right = Node(data: 2);
  root.right = Node(data: 5);
  root.right!.left = Node(data: 9);
  root.right!.right = Node(data: 6);
  BinaryTree tree = BinaryTree();
  print(tree.checkBst(root));
  tree.display(root);
  */
  /*
   Trie trie = Trie();
   trie.insertVal("Edwin");
   trie.insertVal("Ewer");
   trie.insertVal("Edert");
   trie.insertVal("Ertyui");
   print(trie.constainsKey("Er"));

   */
  //checkFrequency([1,2,3,4,9,2,5,3,8,3,2,5,4,8]);
  //LinkedList<Node> link = LinkedList<Node>();
 // link.add(Node(data: data))
}

// Binary Tree
/*
class Node{
   final int data;
  Node? left,right;
  Node({required this.data});
}

class BinaryTree{
  Node? root;

  insert(int data){
   root = insertHelper(root,data);
  }

  Node? insertHelper(Node? root, int data) {
    Node newNode = Node(data: data);
    if(root==null){
      root = newNode;
    }else{
      if(data<root.data){
        root.left = insertHelper(root.left, data);
      }else if(data>root.data){
        root.right = insertHelper(root.right, data);
      }
    }
    return root;
  }

  display(){
    displayHelper(root);
  }

  void displayHelper(Node? root) {
    if(root!=null){
      displayHelper(root.left);
      print(root.data);
      displayHelper(root.right);
    }
  }

  contains(){
    root = containsHelper(root);
  }

  Node? containsHelper(Node? root) {
    if(root==null){
      print("No Element");
    }else{

    }
  }

}
*/

// Binary Search Tree
/*
class Node{
  final int data;
  Node? right,left;
  Node({required this.data});
}
class BinaryTree{
 bool checkBst(Node root){
    List<int> list =[];
    checkBstHelper(root,list);
    for(int i=0;i<list.length-1;i++){
      if(list[i]>list[i+1]){
        return false;
      }
    }
    return true;
  }

  void checkBstHelper(Node? root, List<int> list) {
   if(root!=null){
     checkBstHelper(root.left, list);
     list.add(root.data);
     checkBstHelper(root.right, list);
   }
  }

  display(Node? root){
   displayHelper(root);
  }

  void displayHelper(Node? root) {
   if(root!=null){
     displayHelper(root.left);
     print(root.data);
     displayHelper(root.right);
   }
  }
}
*/

//Trie
/*
class TrieNode{
  Map<String, TrieNode> children = {};
  bool isEnd = false;
}
class Trie {
  TrieNode root = TrieNode();

insertVal(String value){
  TrieNode currentNode = root;
  for(int i=0; i<value.length;i++){
    String char = value[i];
      currentNode.children.putIfAbsent(char,()=> TrieNode());
      currentNode = currentNode.children[char]!;

  }
  currentNode.isEnd = true;
}

List<String> constainsKey(String prefix){
  TrieNode currentNode = root;
  for(int i=0;i<prefix.length;i++){
    String char =prefix[i];
    if(!currentNode.children.containsKey(char)){
      return [];
    }
    currentNode = currentNode.children[char]!;
  }
  List<String> list=[];
  dfs(currentNode,prefix,list);
  return list;
}

  void dfs(TrieNode? currentNode, String prefix, List<String> list) {
  if(currentNode!.isEnd){
    list.add(prefix);
  }
  for(var char in currentNode.children.keys){
    dfs(currentNode.children[char], prefix+char, list);
  }
  }

}
*/

// checkFrequency(List<int> list){
//   Map<int, int> freqMap = {};
//
//   for(var val in list){
//     freqMap[val] = (freqMap[val]??0)+1;
//   }
//   print(freqMap);
//   int rep = freqMap.values.reduce((a,b)=>a>b?a:b);
//   List<int> reValues = freqMap.keys.where((val)=>freqMap[val]==rep).toList();
//   print("Rep Values $reValues");
//
//   List<int> uni = freqMap.keys.where((val)=>freqMap[val]==1).toList();
//   print("Unique $uni");
// }
//
// base class Node extends LinkedListEntry<Node>{
//   final int data;
//
//   Node({required this.data});
// }