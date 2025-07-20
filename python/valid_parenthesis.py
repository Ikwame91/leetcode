class Solution(object):
    def isValid(self, s):
        # Map: closing bracket -> opening bracket (for easy lookup when we find a closing char)
        bracket_pairs = {
            ")": "(",
            "}": "{",
            "]": "[",
        }

        stack = []  # Our stack to store opening brackets

        for char in s:
            # If the character is a CLOSING bracket (i.e., it's a key in our bracket_pairs map)
            if char in bracket_pairs:
                # 1. Check if stack is empty. If it is, this closing bracket has no opening pair.
                #    e.g., s = "}"
                if not stack:
                    return False

                # 2. Get the expected opening bracket for the current closing char.
                #    e.g., if char is ')', expected_open is '('.
                expected_open = bracket_pairs[char]

                # 3. Pop the top element from the stack. This should be the most recent open bracket.
                #    e.g., if stack was ['(', '['], top_element will be '['.
                actual_open_on_stack = stack.pop()

                # 4. Compare: Does the actual open bracket on the stack match the expected open bracket?
                #    e.g., if actual_open_on_stack is '[' and expected_open is '(', they don't match.
                if actual_open_on_stack != expected_open:
                    return False

            # Else, the character is an OPENING bracket
            else:
                # Push it onto the stack.
                # e.g., if char is '(', push '(' onto stack.
                stack.append(char)

        # After iterating through all characters:
        # If the stack is empty, all brackets were correctly matched.
        # If the stack is not empty, some opening brackets were never closed.
        return not stack


# example usage
if __name__ == "__main__":
    solution = Solution()
    print(solution.isValid("()"))  # True
    print(solution.isValid("()[]{}"))  # True
    print(solution.isValid("(]"))  # False
    print(solution.isValid("([)]"))  # False
    print(solution.isValid("{[]}"))  # True
    print(solution.isValid("{{{{}}}}"))  # True
    print(solution.isValid("{{{}}"))  # False
    print(solution.isValid("{{{}}}{{}}"))  # True
