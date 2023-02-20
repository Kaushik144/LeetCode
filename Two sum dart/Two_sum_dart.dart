class Solution {
  Map<int, int> arrayMap = {};
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      final sum = target - nums[i];
      if (arrayMap.containsKey(sum)) {
        final value = arrayMap[sum]!;
        return [value, i];
      } else {
        arrayMap[nums[i]] = i;
      }
    }

    return [];
  }
}
