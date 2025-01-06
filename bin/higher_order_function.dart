/*
void main(){
  display("I Am","Good",(a,b){
   return "String is $a $b";
  });
}

display(String a, String b,Function(String,String) callback){
  print("a - $a \n----- \nb - $b\n");
  print(callback(a,b));
}
*/

/*
void findRepeatedAndUnique(List<int> numbers) {
  // Frequency map
  Map<int, int> frequencyMap = {};
  for (var num in numbers) {
    frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
    print("For ${frequencyMap[num]}");
  }
  print("After FOR - ${frequencyMap}");
  // Most repeated
  int maxFrequency = frequencyMap.values.reduce((a, b) {
    print("a - $a   ------    b - $b");
    return a > b ? a : b;
  });
  List<int> mostRepeated = frequencyMap.entries
      .where((entry) => entry.value == maxFrequency)
      .map((entry) => entry.key)
      .toList();
print("Most Repeated -   $mostRepeated");
  // Unique elements
  List<int> uniqueElements = frequencyMap.entries
      .where((entry) => entry.value == 1)
      .map((entry) => entry.key)
      .toList();

  print("Most Repeated Elements: $mostRepeated (Frequency: $maxFrequency)");
  print("Unique Elements: $uniqueElements");
}

// Example usage:
void main() {
  List<int> numbers = [1, 2, 3, 1, 2, 2, 4, 5];
  findRepeatedAndUnique(numbers);
}*/
/*
void main() {
  List<int> numbers = [1, 2, 3, 1, 1, 1, 4, 5];
  findRepeatedAndUnique(numbers);
}

findRepeatedAndUnique(List<int> numberList) {
  Map<int, int> frequencyMap = {};
  for (var number in numberList) {
    frequencyMap[number] = (frequencyMap[number] ?? 0) + 1;
  }
  print(frequencyMap);
  
  // repetitions
  int maxFreq = frequencyMap.values.reduce((a,b)=>a>b?a:b);
  
  List<int> repeated = frequencyMap.entries.where((entry)=>entry.value==maxFreq).map((val)=>val.key).toList();
  
  List<int> list = frequencyMap.entries.where((entry)=>entry.value==1).map((er)=>er.key).toList();
}
*/

void main(){
  List<int> numbers = [1, 2, 3, 1, 1, 1, 4, 5];
  freq(numbers);
}

void freq(List<int> numbers) {
  Map<int, int> freqMap = {};

  for(var num in numbers){
    freqMap[num] = (freqMap[num] ?? 0) +1;
  }
  print(freqMap);
  int rep = freqMap.values.reduce((a,b)=>a>b?a:b);

  List<int> repNUm = freqMap.entries.where((entry)=>entry.value==rep).map((en)=>en.key).toList();

  List<int> unique = freqMap.entries.where((entry)=>entry.value==1).map((ent)=>ent.key).toList();

  print("Rep - $repNUm ---  ---  uniq -$unique");
}