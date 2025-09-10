class Solution {
  bool containsDuplicate(List<int> nums) {
   var numbers = nums.toSet();
    if(numbers.length == nums.length){
            return false;
        }
        return true;  
    }
   
  }