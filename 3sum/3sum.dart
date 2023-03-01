class Solution {
  List<List<int>> threeSum(List<int> nums) {
    nums.sort();
    List<List<int>> list = [];

    for (int i = 0; i < nums.length - 2; i++) {
      // avoid duplicates
      if (i > 0 && (nums[i] == nums[i - 1])) continue;

      for (int j = i + 1, k = nums.length - 1; j < k;) {
        if (nums[i] + nums[j] + nums[k] == 0) {
          list.add(List.from([nums[i], nums[j], nums[k]]));
          j++;
          k--;
          // avoid duplicates
          while ((j < k) && (nums[j] == nums[j - 1])) j++;
          // avoid duplicates
          while ((j < k) && (nums[k] == nums[k + 1])) k--;
        } else if (nums[i] + nums[j] + nums[k] > 0)
          k--;
        else
          j++;
      }
    }
    return list;
  }
}
