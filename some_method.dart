findMinNumber(arr) {
  var cur = arr[0];
  for (var i in arr) {
    if (cur > i) {
      cur = i;
    }
  }
  print(cur);
}

findMaxNumber(arr) {
  var cur = arr[0];
  for (int i in arr) {
    if (cur < i) {
      cur = i;
    }
  }
  print(cur);
}

bubbleSort(List<int> array) {
  int lengthOfArray = array.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return (array);
}

void main() {
  List<int> arr = [12, 3, 13, 8, 7, 15, 3];
  findMaxNumber(arr);
  findMinNumber(arr);
  List<int> bubbleShort = bubbleSort(arr);
  print(bubbleShort);
}
