class Solution {
  bool isValid(String word) {
    if (word.length < 3) return false;

    final vowels = "aeiouAEIOU";
    bool hasVowel = false;
    bool hasConsonant = false;

    for (int i = 0; i < word.length; i++) {
      String ch = word[i];

      if (!RegExp(r'^[a-zA-Z0-9]$').hasMatch(ch)) return false;
      if (RegExp(r'^[a-zA-Z]$').hasMatch(ch)) {
        if (vowels.contains(ch)) {
          hasVowel = true;
        } else {
          hasConsonant = true;
        }
      }
    }
    return hasVowel && hasConsonant;
  }
}

void main() {
  Solution solution = Solution();

  // Test cases
  print(solution.isValid("hello")); // true
  print(solution.isValid("aei")); // false
  print(solution.isValid("bd")); // false
  print(solution.isValid("abc123")); // true
  print(solution.isValid("ab!c")); // false
  print(solution.isValid("a1b2c3")); // true
}
