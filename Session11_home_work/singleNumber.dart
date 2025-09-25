class Solution {
  int singleNumber(List<int> nums) {
    int unique = 0;
    Map<int, int> numberCount = {};
    for (var element in nums) {
      if (numberCount.containsKey(element)) {
        numberCount[element] = numberCount[element]! + 1;
      } else {
        numberCount[element] = 1;
      }
    }
    numberCount.forEach((number, count) {
      if (count == 1) {
        unique = number;
      }
    });
    return unique;
  }
}
