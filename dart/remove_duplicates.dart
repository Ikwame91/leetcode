class Solution {
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
