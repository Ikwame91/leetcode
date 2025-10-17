/**
 * Converts a Roman numeral string to an integer using a right-to-left scanning strategy.
 * @param {string} s - The Roman numeral string (e.g., "MCMXCIV").
 * @returns {number} The integer value (e.g., 1994).
 */

var romanToInt = function (s) {
  const romanValues = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000,
  };

  let total = 0;
  let rightHandValue = 0;

  for (let i = s.length - 1; i >= 0; i--) {
    const currentSymbol = s[i];
    const currentValue = romanValues[currentSymbol];

    if (currentValue < rightHandValue) {
        total -= currentValue
    }
    total += currentValue;
    rightHandValue = currentValue;
  }

  return total;
};
