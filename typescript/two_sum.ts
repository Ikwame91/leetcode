/**
 * @param nums - The array of integers.
 * @param target - The target sum.
 * @returns An array containing the indices of the two numbers.
 */

export function twoSum(nums: number[], target: number): number[] {
  const numMap: Map<number, number> = new Map();

  for (let i = 0; i < nums.length; i++) {
    const currentNum: number = nums[i];

    const complement: number = target - currentNum;

    if (numMap.has(complement)) {
      //if the complement exists in the map, return the indices
      //get the index of the complement from the map
      //the non-null assertion operator (!) is used here to tell TypeScript that we are sure that the value is not undefined

      const complementIndex: number = numMap.get(complement)!;
      return [complementIndex, i];
    }
    //store the index of the current number and its index
    numMap.set(currentNum, i);
  }
  
  // Return empty array if no solution is found
  return [];
}
