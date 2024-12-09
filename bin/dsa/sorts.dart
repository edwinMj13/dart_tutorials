
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

void bubbleSort(List<int> numbers){
  for (int i=0;i<numbers.length;i++){
    for (int j=0;j<numbers.length-i-1;j++){
      if(numbers[j]>numbers[j+1]){
        int temp = numbers[j];
        numbers[j] = numbers[j+1];
        numbers[j+1] = temp;
      }
    }
  }
}
void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];

  print("Unsorted List: $numbers");

  bubbleSort(numbers);

  print("Sorted List: $numbers");
}
