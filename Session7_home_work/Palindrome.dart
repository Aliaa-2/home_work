class Solution {
  bool isPalindrome(String s) {
    var formatted_s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    String newS = formatted_s.split("").reversed.join();
    return formatted_s == newS;
    
  }
}