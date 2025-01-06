/*
// check if BST
class Node {
  final int data;
  Node? left,right;

  Node( this.data);

}

check(Node root){
  List<int> list =[];
  checkForBst(list,root);
  for(int i=0;i<list.length-1;i++){
    print("i- ${list[i]}   ------ i+1 ${list[i+1]} - ");
    if(list[i]>=list[i+1])return false;
  }
  return true;
}

void checkForBst(List<int> list, Node? root) {
  if(root==null)return;
  checkForBst(list, root.left);
  list.add(root.data);
  checkForBst(list, root.right);
}

display(Node? root){
  if(root!=null){
    display(root.left);
    print(root.data);
    display(root.right);
  }
}


void main(){
  Node root =Node(10);
  root.left = Node(8);
  root.left!.right = Node(9);
  root.left!.left = Node(6);
  root.right = Node(12);
  root.right!.left = Node(11);
  root.right!.right = Node(13);
  display(root);
  print(check(root));
  
}

*/
// Adding Binary Tree
// class Node {
//   final int data;
//   Node? left,right;
//
//   Node(this.data);
//
// }
// Node? root;
//
// class BinaryTree {
//
//   addHelper(Node? node){
//    root = addData(node, root);
//   }
//
//   addData(Node? node,Node? rootData) {
//     int data = node!.data;
//     if (rootData == null) {
//       rootData = node;
//     } else {
//       if (data < rootData.data) {
//         rootData.left = addData(node,rootData.left);
//       } else {
//         rootData.right = addData(node,rootData.right);
//       }
//     }
//     return rootData;
//   }
//
//   displayHelper(){
//     displayInorder(root);
//   }
//
//   displayInorder(Node? nodeRoot) {
//     if (nodeRoot != null) {
//       displayInorder(nodeRoot.left);
//       print(nodeRoot.data);
//       displayInorder(nodeRoot.right);
//     }
//   }
// }
/*
class Node{
  Node? left,right;
  int data;
  Node(this.data);
}
class BinaryTree{
  Node? root;

  checkForBst(Node root){
    List<int> list = [];
    check(root,list);
    for(int i=0;i<list.length;i++){
      if(list[i]>list[i+1]){
        return false;
      }
    }
    return true;
  }

  void check(Node? root, List<int> list) {
    if(root!=null){
      check(root.left!, list);
      list.add(root.data);
      check(root.right!, list);
    }
  }
}
*/
void main() {
 /* BinaryTree binaryTree = BinaryTree();
  binaryTree.insertHelper(Node(12));
  binaryTree.insertHelper(Node(13));
  binaryTree.insertHelper(Node(14));
  binaryTree.insertHelper(Node(15));
  binaryTree.insertHelper(Node(10));
  binaryTree.insertHelper(Node(16));
  binaryTree.insertHelper(Node(19));
  binaryTree.displayHelper();
  print(binaryTree.containsHelper(12));
  binaryTree.displayHelper();
*/
  Trie trie =Trie();
  trie.insertHelper("Qwerty");
  trie.insertHelper("Qregfrvg");
  trie.insertHelper("Qwesdfdfg");
  trie.insertHelper("Qwer");
  
  print(trie.prefixContains("Qwe"));
}


class TrieNode{
  Map<String, TrieNode> children ={};
  bool isEnd = false;
}
class Trie{
  TrieNode root = TrieNode();
  

  
  insertHelper(String prefix){
    TrieNode currentNode = root;
    for(int i=0;i<prefix.length;i++){
      String char = prefix[i];
        currentNode.children.putIfAbsent(char, ()=>TrieNode());
        currentNode = currentNode.children[char]!;
    }
    currentNode.isEnd = true;
  }
  
  List<String> prefixContains(String prefix){
    TrieNode currentNode = root;
    for(int i=0;i<prefix.length;i++){
      String char = prefix[i];
      if(!currentNode.children.containsKey(char)){
        return [];
      }
      currentNode = currentNode.children[char]!;
    }
    List<String> result = [];
    _dfs(currentNode,prefix,result);
    return result;
  }
  _dfs(TrieNode root,String prefix,List<String> result){
    if(root.isEnd){
      result.add(prefix);
    }
      for (var char in root.children.keys) {
        _dfs(root.children[char]!, prefix + char, result);
      }
  }
  
}




/*
class Node{
  int data;
  Node? right,left;
  Node(this.data);
}
class BinaryTree{
  Node? root;
  insert(int data){
   root =  insertHelper(root,data);
  }

  Node insertHelper(Node? root, int data) {
    Node newNode = Node(data);
    if(root==null){
      root = newNode;
    }else{
      if(data<root.data){
        root.left = insertHelper(root.left, data);
      }else{
        root.right = insertHelper(root.right, data);
      }
    }
    return root;
  }

  contains(int data){
   return containsHelper(root,data);
  }

   containsHelper(Node? root, int data) {
    Node dat = Node(data);
    if(root==null){
      return null;
    }else if(root.data == dat.data){
      return true;
    }else if(data > root.data){
      return containsHelper(root.right, data);
    }else if(data<root.data){
      containsHelper(root.left, data);
    }
  }

}
*/
// class Node {
//   final int data;
//   Node? right, left;
//
//   Node(this.data);
// }
//
// Node? root;
//
// class BinaryTree {
//   insertHelper(Node? node) {
//     root = insertData(root, node);
//   }
//
//   Node? insertData(Node? root, Node? node) {
//     int data = node!.data;
//     if (root == null) {
//       root = node;
//     } else {
//       if (data < root.data) {
//         root.left = insertData(root.left, node);
//       } else {
//         root.right = insertData(root.right, node);
//       }
//     }
//     return root;
//   }
//
//   displayHelper() {
//     displayInorder(root);
//   }
//
//   void displayInorder(Node? root) {
//     if (root != null) {
//       displayInorder(root.left);
//       print(root.data);
//       displayInorder(root.right);
//     }
//   }
//
//    containsHelper(int nodeData) {
//    return containsData(root, nodeData);
//   }
//
//   containsData(Node? root, int nodeD) {
//     //int nodeD = nodeData!.data;
//     if (root == null) {
//       return false;
//     } else if (root.data == nodeD) {
//       return true;
//     }else if(nodeD<root.data){
//       return containsData(root.left, nodeD);
//     }else if(nodeD>root.data){
//       return containsData(root.right, nodeD);
//     }
//   }
//   removeHelper(int data){
//     if(containsHelper(data)){
//       remove(root,data);
//     }else {
//       print("Not an element");
//     }
//   }
//
//   void remove(Node? root, int data) {
//
//   }
//
// }
