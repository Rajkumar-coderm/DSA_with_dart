// ! LearniarSearch Algoridham with class.
class LeaniarSearch {
  void learniarsSearch(List array) {
    var loc = 0;
    for (int i in array) {
      if (i == 23) {
        loc = i;
      }
    }
    print(loc);
  }
}

// !LinearSearch algoridham wid function.
linearSearch(List<int> array, int x) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == x) {
      return i;
    }
  }
}

main() {
  List<int> array = [12, 23, 43, 54, 65, 67];
  var serch = LeaniarSearch();
  serch.learniarsSearch(array);
  print(linearSearch(array,12));
}

//! Likedlist type of total is three.
//?? 1]. Single likedlist=> There is first is Head that is hold first data and next data address then last paion is hold data and null address next element.;
// * 2]. Doubly likedlist=> There is three part of list that hold first hold pre,data,next and thre is first pre is null and then last next is null;
//* 3]. circular linkedlist=>There is two part====;
// i] circular singluler linklist=> There is hold last item is first item address.
// ii] circular dubly linklist => there is hold three part pre, data , next there is last item hold first item address and first item hold last item address.;
  

