/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function (nums, target) {
  const numMap = new Map();

  for (let i = 0; i < nums.length; i++) {
    currentNum = nums[i];

    const complement = target - currentNum;

    if (numMap.has(complement)) {
      return [numMap.get(complement), i];
    }
    numMap.set(currentNum, i);
  }

  return []; // If no solution is found, return an empty array.

  // // 1. Initialize the Map (Hash Table)
  // // The Map will store: { number_value: index }
  // const numMap = new Map();

  // // 2. Iterate through the array once.
  // // 'i' is the current index.
  // for (let i = 0; i < nums.length; i++) {
  //     const currentNum = nums[i];

  //     // 3. Calculate the required complement.
  //     const complement = target - currentNum;

  //     // 4. Check if the complement is already in the map.
  //     // This is the O(1) (instantaneous) lookup that makes the solution fast.
  //     if (numMap.has(complement)) {
  //         // If the complement is found, we have the two indices:
  //         // The index of the complement is stored in the map.
  //         // The index of the current number is 'i'.
  //         return [numMap.get(complement), i];
  //     }

  //     // 5. If the complement is NOT found, store the current number
  //     // and its index for future lookups.
  //     numMap.set(currentNum, i);
  // }

  // // Per the problem constraints, a solution always exists, so this line
  // // should theoretically not be reached.
  // return [];
};
