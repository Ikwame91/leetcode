class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) {
      return "";
    }
    if (strs.length == 1) {
      return strs[0];
    }
    String referenceString = strs[0];

    for (int i = 0; i < referenceString.length; i++) {
      String charToCompare = referenceString[i];

      for (int j = 1; j < strs.length; j++) {
        String otherString = strs[j];

        if (i >= otherString.length || otherString[i] != charToCompare) {
          return referenceString.substring(0, i);
        }
      }
    }
    return referenceString;
  }
}
