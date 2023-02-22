class Solution {
  int divide(int dividend, int divisor) {
    if (dividend / divisor > 2147483647)
      return 2147483647;
    else if (dividend / divisor < -2147483648) return -2147483648;
    return (dividend / divisor).truncate();
  }
}
