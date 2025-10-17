export function romanToInteger(s: string): number {
  const romanValues: { [key: string]: number } = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000,
  };

  let total: number = 0;
  let rightValue: number = 0;

  for (let i = s.length - 1; i >= 0; i--) {
    const currentSymbol: string = s[i];
    const currentValue: number = romanValues[currentSymbol];

    if (currentValue < rightValue) {
      total -= currentValue;
    } else {
      total += currentValue;
    }

    rightValue = currentValue;
  }

  return total;
}
