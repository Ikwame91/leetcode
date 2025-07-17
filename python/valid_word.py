class Solution(object):
    def isValid(self, word):
        if len(word) < 3:
            return False
        vowels = set("aeiouAEIOU")
        hasvowel = False
        hasconsonant = False

        for character in word:
            ## Check for invalid characters
            if not character.isalnum():
                return False
            ## Check for vowels and consonants
            if character.isalpha():
                if character in vowels:
                    hasvowel = True
                else:
                    hasconsonant = True
        return hasvowel and hasconsonant
