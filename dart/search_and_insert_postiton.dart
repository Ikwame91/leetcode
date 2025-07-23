class Solution {
  int searchInsert(List<int> nums, int target) {
    // Initialize the low and high pointers for the binary search range.
    int low = 0;
    int high = nums.length - 1;

    // The binary search loop continues as long as the low pointer is less than or equal to the high pointer.
    // This means there's still a valid search space.
    while (low <= high) {
      // Calculate the middle index.
      // Using (low + high) ~/ 2 (integer division) prevents potential overflow
      // for very large low/high values, though (low + high) / 2 is fine for typical int ranges.
      int mid = low + ((high - low) ~/ 2);

      // Compare the middle element with the target.
      if (nums[mid] == target) {
        // If the target is found, return its index.
        return mid;
      } else if (nums[mid] < target) {
        // If the middle element is less than the target,
        // the target must be in the right half of the current search space.
        // So, move the low pointer to mid + 1.
        low = mid + 1;
      } else {
        // nums[mid] > target
        // If the middle element is greater than the target,
        // the target must be in the left half of the current search space.
        // So, move the high pointer to mid - 1.
        high = mid - 1;
      }
    }

    // If the loop finishes, it means the target was not found in the array.
    // At this point, 'low' represents the correct index where the target
    // would be inserted to maintain the sorted order.
    return low;
  }
}
