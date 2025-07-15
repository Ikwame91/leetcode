class Solution(object):
    def twoSum(self, nums, target):

        num_map = {}

        for i, current_num in enumerate(nums):

            complement = target - current_num

            if complement in num_map:

                return [num_map[complement], i]

            num_map[current_num] = i

        return []
