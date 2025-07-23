// class Solution{
//   int strStr(String haystack, String needle){
//     if(needle.isEmpty){
//       return 0; // If needle is empty, return 0
//     }

//     if (needle.length > haystack.length){
//       return -1; // If needle is longer than haystack, return -1
//     }

//     for (int i = 0; i <= haystack.length - needle.length; i++) {
//       // Check if the substring of haystack starting at index i matches needle
//       if (haystack.substring(i, i + needle.length) == needle) {
//         return i; // Return the index of the first occurrence
//       }
//     }
//     return -1; // If no occurrence is found, return -1
//   }
// }

class Solution1 {
  int strStr(String haystack, String needle) {
    if (needle.isEmpty) {
      return 0;
    }
    if (needle.length > haystack.length) {
      return -1;
    }

    for (int i = 0; i <= haystack.length - needle.length; i++) {
      bool match = true;
      for (int j = 0; j < needle.length; j++) {
        if (haystack[i + j] != needle[j]) {
          match = false;
          break;
        }
      }
      if (match) {
        return i;
      }
    }
    return -1;
  }
}

class Solution {
  int strStr(String haystack, String needle) {
    // Edge case: If needle is an empty string, it's considered to occur at index 0.
    if (needle.isEmpty) {
      return 0;
    }

    // Edge case: If needle is longer than haystack, it cannot be found.
    if (needle.length > haystack.length) {
      return -1;
    }

    // Outer loop: Iterate through all possible starting positions in haystack.
    // 'i' represents the starting index in haystack for a potential match.
    // The loop runs from 0 up to (haystack.length - needle.length).
    // This is because if 'i' goes beyond this, there aren't enough characters left in haystack
    // to match the entire needle.
    for (int i = 0; i <= haystack.length - needle.length; i++) {
      // Inner loop: Check if needle matches the substring of haystack starting at 'i'.
      // 'j' iterates through the characters of needle.
      bool match = true; // Assume a match until a mismatch is found.
      for (int j = 0; j < needle.length; j++) {
        // Compare the current character of needle with the corresponding character in haystack.
        // haystack[i + j] is the character in haystack that aligns with needle[j].
        if (haystack[i + j] != needle[j]) {
          match =
              false; // Mismatch found, so needle does not match at this 'i'.
          break; // Exit the inner loop, no need to check further for this 'i'.
        }
      }

      // If the inner loop completed and 'match' is still true,
      // it means we found a full occurrence of needle starting at index 'i'.
      if (match) {
        return i; // Return the first occurrence's index.
      }
    }

    // If the outer loop completes without finding any match,
    // then needle is not present in haystack.
    return -1;
  }
}
