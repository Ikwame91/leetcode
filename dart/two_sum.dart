class Solution {
  List<int> twoSum(List<int> nums, int target) {
    //smart shopping list method

    Map<int, int> numMap = {};

    //looping through the list of numbers one by one along with their indices
    for (int i = 0; i < nums.length; i++) {
      int currentNum = nums[i];

      int complement = target - currentNum;
      // Check if the complement exists in the map
      if (numMap.containsKey(complement)) {
        // If found, return the indices
        // The complement is the number that, when added to the current number, equals the target
        // We return the index of the complement and the current index
        // The '!' operator is used to assert that the value is not null

        return [numMap[complement]!, i];
      }
      // If not found, add the current number and its index to the map
      // This allows us to check for the complement in future iterations
      numMap[currentNum] = i;
    }
    return [];
  }
}

void main() {
  Solution solution = Solution();

  // Test cases
  print(solution.twoSum([2, 7, 11, 15], 9)); // [0, 1]
  print(solution.twoSum([3, 2, 4], 6)); // [1, 2]
  print(solution.twoSum([3, 3], 6)); // [0, 1]
  print(solution.twoSum([1, 2, 3], 5)); // [1, 2]
}

// nums = [1, 4, 5, 11, 7]
// target = 18
// nums = [12, 3, 9, 14, 8, 6, 11, 7]
// target = 19
