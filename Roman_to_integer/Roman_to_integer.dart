class Solution {
  int romanToInt(String s) {
    int result = 0;
    int prev = 0;
    int current = 0;
    Map<String, int> cases = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
    };

    for (String data in s.split('').reversed.toList()) {
      current = cases[data]!;
      if (prev <= current) {
        result += current;
      } else {
        result -= current;
      }
      prev = current;
    }
    return result;
  }
}
