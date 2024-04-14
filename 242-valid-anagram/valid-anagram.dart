class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;
    
    final sMap = <String, int>{};
    final tMap = <String, int>{};
    
    for (int i = 0; i < s.length; i++) {
        sMap[s[i]] = (sMap[s[i]] ?? 0) + 1;
        tMap[t[i]] = (tMap[t[i]] ?? 0) + 1;
    }
    
    for (String key in sMap.keys) {
        if (sMap[key] != (tMap[key] ?? 0)) return false;
    }
    
    return true;
  }
}