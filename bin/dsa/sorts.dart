
/*
void bubbleSort(List<int> list) {
  int n = list.length;
  bool swapped;

  for (int i = 0; i < n - 1; i++) {
    swapped = false;

    // Traverse the list up to n - i - 1
    for (int j = 0; j < n - i - 1; j++) {
      // Compare adjacent elements
      if (list[j] > list[j + 1]) {
        // Swap if they are in the wrong order
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
        swapped = true;
      }
    }

    // If no two elements were swapped, break the loop
    if (!swapped) {
      break;
    }
  }
}
*/

// Bubble Sort
/*
void main(){
  bubbleSort([12,34,32,65,1,23,4]);
}

bubbleSort(List<int> list){
  print(list);
  for(int i=0;i<list.length-1;i++){
    for(int j=i+1;j<list.length;j++){
      if(list[i]>list[j]){
        int temp = list[i];
        list[i] = list[j];
        list[j] = temp;
      }
    }
  }
  print(list);
}
*/

// Insertion Sort
/*
void insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int current = arr[i];
    int j = i - 1;

    // Move elements of arr[0..i-1], that are greater than current, to one position ahead
    // of their current position
    print("\n");
    print("I - $i --------    J - $j");
    while (j >= 0 && arr[j] > current) {
      arr[j + 1] = arr[j];
      j--;
    }

    // Place current at the correct position
    print("| J | - $j");
    print("List $arr");
    arr[j + 1] = current;
    print("List arr[j + 1] = current; $arr");

  }
}

void main() {
  List<int> arr = [2,8,5,3,9,4];
  print("Original list: $arr");

  insertionSort(arr);

  print("Sorted list: $arr");
}
*/

insertionSort(List<int> list){
  for(int i=1;i<list.length;i++){
    int current = list[i];
    int j=i-1;
    while(j>=0 && list[j]>current){
      list[j+1] = list[j];
      j--;
    }
    list[j+1] =current;
  }
}
void main(){
  List<int> list = [34,65,12,3,2,1,6];
  insertionSort(list);
  list.forEach(print);
  List li = List.filled(5, 7,growable: false);
  print(li);


}