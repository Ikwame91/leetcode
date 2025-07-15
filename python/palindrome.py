class Solution(object):
    def isPalindrome(self, x):
        if x < 0 or (x % 10 == 0 and x != 0):
            return False

        reversedHalf = 0
        while x > reversedHalf:
            lastDigit = x % 10
            reversedHalf = reversedHalf * 10 + lastDigit
            x = x // 10

        return x == reversedHalf or x == reversedHalf // 10
