class Solution {
  bool isPalindrome(int x) {
    if (x < 0 || (x % 10 == 0 && x != 0)) return false;

    int reversedHalf = 0;
    while (x > reversedHalf) {
      int lastDigit = x % 10;
      reversedHalf = reversedHalf * 10 + lastDigit;
      x = x ~/ 10;
    }

    return x == reversedHalf || x == reversedHalf ~/ 10;
  }
}

class Solution2 {
  bool isPalindrome(int x) {
    if (x < 0) return false;

    String s = x.toString();
    String reversedS = s.split('').reversed.join('');

    return s == reversedS;
  }
}
