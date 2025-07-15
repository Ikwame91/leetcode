class Solution {
  int romanToInt(String s) {
    final Map<String, int> romanValues = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };
    int total = 0;
    int previousValue = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      String currentSymbol = s[i];
      int currentValue = romanValues[currentSymbol]!;

      if (currentValue < previousValue) {
        total -= currentValue;
      } else {
        total += currentValue;
      }
      previousValue = currentValue;
    }
    return total;
  }
}
