class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;
    
    final sArr = s.split('');
    final tArr = t.split('');
    final sMap = <String, int>{};
    final tMap = <String, int>{};
    
    for (int i = 0; i < sArr.length; i++) {
        sMap[sArr[i]] = (sMap[sArr[i]] ?? 0) + 1;
        tMap[tArr[i]] = (tMap[tArr[i]] ?? 0) + 1;
    }
    
    for (String key in sMap.keys) {
        if (sMap[key] != (tMap[key] ?? 0)) return false;
    }
    
    return true;
  }
}