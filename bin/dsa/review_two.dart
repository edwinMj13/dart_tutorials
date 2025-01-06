import 'dart:convert';

class DbDatabase{
  String? phone;
  String? name;

/*
  db.insertRaw("CTEATE TABLE STUDENT (PRIMARY KEY int, STRING phone, String name)");
  db.execute();
  Map<String,dynamic> data={
    "name":"Edwin",
  "phoneNo":"12345678",
  "address":"MaliackalH,Karayamaparambu",
  };

  final response = http.post(Uri.parse(uri),body:data,headers:{
    "Content-Type":"application/json",
  "author"
  });
  */
}

class TrieNode{
  Map<String,TrieNode> children = {};
  bool isEnd = false;
}
class Trie{
  TrieNode root = TrieNode();

  insert(String data){
    TrieNode currentNode = root;
    for(int i=0;i<data.length;i++){
      String char = data[i];
      currentNode.children.putIfAbsent(char,()=>TrieNode());
      currentNode = currentNode.children[char]!;
    }
    currentNode.isEnd = true;
  }




}