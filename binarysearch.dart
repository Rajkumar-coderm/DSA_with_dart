void main() {
  List<int> list = [24, 36, 39, 47, 78, 87, 92, 112, 156];
  var serch = BinarySearch();
  serch.binarySearch(87, list);
}

class BinarySearch {
  void binarySearch(int userValue, List<int> arr) {
    int location = 0;
    int min = 0;
    int max = arr.length - 1;
    while (min <= max) {
      int mid = ((min + max) / 2).floor();
      if (userValue == arr[mid]) {
        location = mid;
        break;
      } else if (userValue < arr[mid]) {
        max = mid - 1;
      } else {
        min = mid + 1;
      }
    }
    print("This is Uservalue Location:- $location");
  }
}
