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
