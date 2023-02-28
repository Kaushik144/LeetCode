class Solution {
  String longestPalindrome(String s) {
    if (s == '' || s.length < 2) {
      return s;
    }

    var longestPalindrome = s.substring(0, 1);

    for (int i = 0; i < s.length; i++) {
      [expand(s, i, i), expand(s, i, i + 1)].forEach((maybeLongest) => {
            if (maybeLongest.length > longestPalindrome.length)
              {longestPalindrome = maybeLongest}
          });
    }

    return longestPalindrome;
  }

  String expand(String s, int begin, int end) {
    while (begin >= 0 && end <= s.length - 1 && s[begin] == s[end]) {
      begin--;
      end++;
    }

    var r = s.substring(begin + 1, end);
    return r;
  }
}
