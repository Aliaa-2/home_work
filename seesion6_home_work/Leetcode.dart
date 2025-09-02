class Solution {
  List<int> twoSum(List<int> nums, int target) {
  List<int> sum = [];
    for (int i = 0; i < nums.length -1 ; i++) {
          if (nums[i] < target) {
            if (nums[i] + nums[i + 1] == target) {
              sum.add(i);
              sum.add(i + 1);     
      }
    }
  }
 return sum;
}
 
}