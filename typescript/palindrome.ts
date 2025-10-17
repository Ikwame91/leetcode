/**
 * @param x - The integer to check.
 * @returns True if x is a palindrome, otherwise false.
 */

export function isPalindrome(x: number): boolean {
  if (x < 0) {
    return false;
  }

  if (x % 10 === 0 && x !== 0) {
    return false;
  }

  let reversedNumber: number = 0;

  while (x > reversedNumber) {
    const lastDigit: number = x % 10;

    reversedNumber = reversedNumber * 10 + lastDigit;

    x = Math.floor(x / 10);
  }

  return x === reversedNumber || x == Math.floor(reversedNumber / 10);
}
