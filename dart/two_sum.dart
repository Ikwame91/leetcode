class Solution {
  List<int> twoSum(List<int> nums, int target) {
    //smart shopping list method

    Map<int, int> numMap = {};

    //looping through the list of numbers one by one along with their indices
    for (int i = 0; i < nums.length; i++) {
      int currentNum = nums[i];

      int complement = target - currentNum;

      if (numMap.containsKey(complement)) {
        return [numMap[complement]!, i];
      }
      numMap[currentNum] = i;
    }
    return [];
  }
}
