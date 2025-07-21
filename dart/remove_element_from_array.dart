class Solution {
  int removeElement(List<int> nums, int val) {
    int left = 0;
    for (int right = 0; right < nums.length; right++) {
      if (nums[right] != val) {
        nums[left] = nums[right];
        left++;
      }
    }
    return left;
  }
}

// Example usage
void main() {
  Solution solution = Solution();
  List<int> nums = [3, 2, 2, 3];
  int val = 3;
  int newLength = solution.removeElement(nums, val);
  print("New length of the array: $newLength");
  print("Modified array: ${nums.sublist(0, newLength)}");
}
