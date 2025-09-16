class Solution {
  bool isAnagram(String s, String t) {
     Map<String, int> mapS = {};
    Map<String, int> mapT = {};
    
    if (s.length != t.length) {
      return false;
    }
    for (int i = 0; i < s.length; i++) {
      String chr = s[i];
      if (mapS.containsKey(chr)) {
        mapS[chr] = mapS[chr]! + 1;
      } else {
        mapS[chr] = 1;
      }
    }

    for (int i = 0; i < t.length; i++) {
      String chr = t[i];
      if (mapT.containsKey(chr)) {
        mapT[chr] = mapT[chr]! + 1;
      } else {
        mapT[chr] = 1;
      }
    }
   
    for (String key in mapS.keys) {
      if (mapT[key] != mapS[key]) {
        return false;
      }
    }
    return true;
    
  }
}