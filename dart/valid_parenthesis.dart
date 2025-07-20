class Solution {
  bool isValid(String s) {
    Map<String, String> bracketMaps = {")": "(", "]": "[", "}": "{"};
    List<String> stackMap = [];
    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      //if char is not a closing bracket in bracketMaps
      if (!bracketMaps.containsKey(char)) {
        //then it must be an opening bracket so add it to the stack list
        stackMap.add(char);
      } else {
        // if char is a closing bracket then definitely the stack is empty
        //and if the stack is empty then definitely we found a closing bracket and theres no open bracket to match it so its invalid

        if (stackMap.isEmpty) {
          return false;
        }

        String topElement = stackMap.removeLast();
        // if the top element of the stack is not equal to the value of the closing bracket in the map
        //then it means the brackets are not matching so its invalid
        if (topElement != bracketMaps[char]) {
          return false;
        }
      }
    }
    // After processing all characters, if the stack is empty, it means all brackets were matched correctly
    // If the stack is not empty, it means there are unmatched opening brackets left
    return stackMap.isEmpty;
  }
}
