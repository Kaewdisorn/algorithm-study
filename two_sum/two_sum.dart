// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// You can return the answer in any order.


// Example 1:
// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

// Example 2:
// Input: nums = [3,2,4], target = 6
// Output: [1,2]

// Example 3:
// Input: nums = [3,3], target = 6
// Output: [0,1]
 
// Constraints:
// 2 <= nums.length <= 104
// -109 <= nums[i] <= 109
// -109 <= target <= 109
// Only one valid answer exists.
 
// Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?

void main() {
  List nums = [3,2,4];
  int target = 6;
  Stopwatch stopwatch = new Stopwatch()..start();
  //print(twoSumWhile(nums, target));
  for (var i = 0; i < 5; i++) {
    print(twoSumWhile(nums, target));
    print('time usage ${stopwatch.elapsed}');
  }
}

List<int> twoSumWhile(nums,target){
  int ans = -1;
  int i = 0;
  List<int> ansIndex = [];
  while (ans != target) {
    ans = nums[i] + nums[i+1];
    if (ans == target) {
      ansIndex.add(i);
      ansIndex.add(i+1);
    } else {
      i++;
    }
  }
  return ansIndex;
}
  //#1 :time usage 0:00:00.002940
  //#2 :time usage 0:00:00.003064
  //#3 :time usage 0:00:00.003120
  //#4 :time usage 0:00:00.003079
  //#5 :time usage 0:00:00.003165