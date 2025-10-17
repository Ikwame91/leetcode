var isPalindrome = function (a) {
  if (a < 0) {
    return false;
  }

  if (a % 10 == 0 && a !== 0) {
    return fasle;
  }

  let reversedNumber = 0;

  while (a > reversedNumber) {
    const last_digit = a % 10;

    reversedNumber = reversedNumber * 10 + last_digit;

    a = Math.floor(a / 10);
  }

  return a === reversedNumber || a === Math.floor(reversedNumber / 10);
};


