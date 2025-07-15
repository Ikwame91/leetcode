class Solution(object):
    def romanToInt(self, s):
        romanValues = {"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000}

        total = 0
        previousValue = 0
        # range(start, stop, step)
        # len(s) - 1 is the index of the last character.
        # -1 is the stop value (the loop will stop before reaching -1, i.e., at 0).
        # -1 as step means we go backwards.

        for i in range(len(s) - 1, -1, -1):
            currentsymbol = s[i]
            currentValue = romanValues[currentsymbol]

            if currentValue < previousValue:
                total -= currentValue
            else:
                total += currentValue

            previousValue = currentValue
        return total
