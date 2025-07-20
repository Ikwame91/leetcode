class Solution {
  int removeDuplicates(List<int> nums) {
    // Handle the edge case of an empty array first.
    if (nums.isEmpty) {
      return 0; // No unique elements.
    }

    // 'slow' pointer: This will track the position where the next unique element should be written.
    // It also acts as an index for the end of the unique part of the array.
    // We start at 0 because the first element (if present) is always unique initially.
    int slow = 0;

    // 'fast' pointer: This will iterate through the entire array, checking each element.
    // We start it from index 1 because we're comparing with nums[slow].
    for (int fast = 1; fast < nums.length; fast++) {
      // If the element at 'fast' is DIFFERENT from the element at 'slow',
      // it means we've found a new unique element.
      if (nums[fast] != nums[slow]) {
        // First, increment 'slow' to move to the next position for the new unique element.
        slow++;
        // Then, copy the unique element from 'fast' to the 'slow' position.
        nums[slow] = nums[fast];
      }
      // If nums[fast] is the SAME as nums[slow], it's a duplicate.
      // We just ignore it and let 'fast' move on. 'slow' remains in place,
      // ready to receive the next unique element.
    }

    // THIS IS THE CORRECT PLACE FOR THE RETURN STATEMENT:
    // After the loop has finished iterating through the entire array,
    // 'slow' points to the index of the last unique element.
    // Since 'slow' is 0-indexed, the number of unique elements (k) is 'slow + 1'.
    return slow + 1;
  }
}

class Solution1 {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) {
      return 0;
    }
    int slow = 0;
    for (int fast = 1; fast < nums.length; fast++) {
      if (nums[fast] != nums[slow]) {
        slow++;
        nums[slow] = nums[fast];
      }
    }
    return slow + 1;
  }
}

//example usage
void main() {
  Solution solution = Solution();
  List<int> nums = [1, 1, 2, 2, 3, 4];
  int uniqueCount = solution.removeDuplicates(nums);
  print("Number of unique elements: $uniqueCount");
  print("Modified array: ${nums.sublist(0, uniqueCount)}");
}
