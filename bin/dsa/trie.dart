class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndOfWord = false;
}

class Trie {
  final TrieNode root = TrieNode();

  // Insert a word into the Trie
  void insert(String word) {
    TrieNode currentNode = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      currentNode.children.putIfAbsent(char, () => TrieNode());
      currentNode = currentNode.children[char]!;
    }
    currentNode.isEndOfWord = true;
  }

  // Find all words starting with a given prefix
  List<String> findWordsWithPrefix(String prefix) {
    TrieNode? currentNode = root;
    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];
      if (!currentNode!.children.containsKey(char)) {
        return []; // Prefix not found
      }
      currentNode = currentNode.children[char]!;
    }
    List<String> result = [];
    _dfs(currentNode!, prefix, result);
    return result;
  }

  // Depth-first search to collect all words from the given node
  void _dfs(TrieNode node, String prefix, List<String> result) {
    if (node.isEndOfWord) {
      result.add(prefix);
    }
    for (String char in node.children.keys) {
      _dfs(node.children[char]!, prefix + char, result);
    }
  }
}

void main() {
  Trie trie = Trie();

  // Insert names into the Trie
  trie.insert("Alice");
  trie.insert("Alina");
  trie.insert("Bob");
  trie.insert("Bobby");
  trie.insert("Charlie");
  trie.insert("Chris");

  // Find and print all names starting with a prefix
  String prefix = "Bo";
  List<String> names = trie.findWordsWithPrefix(prefix);

  if (names.isEmpty) {
    print("No names found starting with '$prefix'");
  } else {
    print("Names starting with '$prefix':");
    for (String name in names) {
      print(name);
    }
  }
}

/*

/*
class TrieNode{
  Map<String, TrieNode> children = {};
  bool isEnd = false;
}

class Trie{
  final TrieNode root = TrieNode();


  void insert(String str){
    TrieNode currentNode = root;
    for(int i=0;i<str.length;i++){
      String letter = str[i];
      currentNode.children.putIfAbsent(letter, ()=>TrieNode());
      currentNode=currentNode.children[letter]!;
    }
    currentNode.isEnd = true;
  }

  List<String> stringsWithPrefix(String prefix){
    TrieNode currentNode =root;
    for(int i=0;i<prefix.length;i++){
      String char = prefix[i];
      if(!currentNode.children.containsKey(char)){
        return[];
      }
      currentNode = currentNode.children[char]!;
    }
    List<String> result = [];
    _dfs(currentNode,prefix,result);
    return result;
  }

  void _dfs(TrieNode currentNode, String prefix, List<String> result) {
    if(currentNode.isEnd){
      result.add(prefix);
    }

    for(String char in currentNode.children.keys){
      _dfs(currentNode.children[char]!, prefix+char, result);
    }
  }

}
*/
void main(){
  Trie trie = Trie();
  trie.insert("edwin");
  trie.insert("albin");
  trie.insert("edard");

  print(trie.prefCheck("edw"));
}

class TrieNode{
  Map<String, TrieNode> children = {};
  bool endSymbol = false;

}
class Trie{
  TrieNode root = TrieNode();

  insert(String data){
    for(int i=0;i<data.length;i++){
      insertHelper(i,data);
    }
  }

  void insertHelper(int index, String data) {
    TrieNode currentNode = root;
    for(int i=index;i<data.length;i++){
      String char = data[i];
      if(!currentNode.children.containsKey(char)){
        TrieNode newNode = TrieNode();
        currentNode.children.putIfAbsent(char,()=>newNode);
        currentNode = currentNode.children[char]!;
      }
    }
    currentNode.endSymbol = true;
  }

  List<String> prefCheck(String prefix){
    TrieNode currentNode = root;
    for(int i = 0; i<prefix.length;i++){
      String char = prefix[i];
      if(!currentNode.children.containsKey(char)){
        return [];
      }
    }
    List<String> results=[];
    _dfs(root,prefix,results);
    return results;
  }

  void _dfs(TrieNode root, String prefix, List<String> results) {
    if(root.endSymbol){
      results.add(prefix);
    }
    for(var char in root.children.keys){
      _dfs(root.children[char]!,prefix+char , results);
    }

  }
}*/