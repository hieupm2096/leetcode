class Solution {
    public String mergeAlternately(String word1, String word2) {
        if (word1.length() == 0) return word2;
        if (word2.length() == 0) return word1;

        String result = "";
        int n = word1.length() > word2.length() ? word1.length() : word2.length();

        for (int i = 0; i < n; i++) {
            if (i < word1.length()) {
                result += word1.charAt(i);
            }
            
            if (i < word2.length()) {
                result += word2.charAt(i);
            }
        }

        return result;
    }
}