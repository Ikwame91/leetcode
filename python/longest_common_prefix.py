class Solution(object):
    def longestCommonPrefix(self, strs):
        if not strs:
            return ""
        if len(strs) == 1:
            return strs[0]
        referenceString = strs[0]

        for i in range(len(referenceString)):
            charToCompare = referenceString[i]
            for j in range(1, len(strs)):
                otherString = strs[j]
                if i >= len(otherString) or otherString[i] != charToCompare:
                    return referenceString[0:i]
        return referenceString
