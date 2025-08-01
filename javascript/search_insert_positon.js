/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
var searchInsert = function(nums, target) {
    // Initialize the low and high pointers for the binary search range.
    let low = 0;
    let high = nums.length - 1;

    // The binary search loop continues as long as the low pointer is less than or equal to the high pointer.
    // This means there's still a valid search space.
    while (low <= high) {
        // Calculate the middle index.
        // Using Math.floor ensures we get a whole number for the index.
        // low + (high - low) / 2 is preferred to prevent potential overflow for very large numbers,
        // though (low + high) / 2 is often fine in JS due to floating point numbers.
        let mid = Math.floor(low + (high - low) / 2);

        // Compare the middle element with the target.
        if (nums[mid] === target) {
            // If the target is found, return its index.
            return mid;
        } else if (nums[mid] < target) {
            // If the middle element is less than the target,
            // the target must be in the right half of the current search space.
            // So, move the low pointer to mid + 1.
            low = mid + 1;
        } else { // nums[mid] > target
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
};

// Example Usage:
// console.log(searchInsert([1,3,5,6], 5)); // Output: 2
// console.log(searchInsert([1,3,5,6], 2)); // Output: 1
// console.log(searchInsert([1,3,5,6], 7)); // Output: 4
// console.log(searchInsert([1,3,5,6], 0)); // Output: 0
// console.log(searchInsert([], 5));        // Output: 0 (empty array, target would be at index 0)