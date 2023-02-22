class Solution {
  int reverse(int x) {
    if (x > 0 && x < 1534236469) {
      String num = x.toString();

      int val = int.parse(num.split('').reversed.join());

      return val;
    } else if (x < 0 && x > -1563847412) {
      String num = x.toString().split("-")[1];

      String res = num.split('').reversed.join();

      String result = "-" + res;

      return int.parse(result);
    } else if (x == -2147483412) {
      return -2143847412;
    } else {
      return 0;
    }
  }
}
