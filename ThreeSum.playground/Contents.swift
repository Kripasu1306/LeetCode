import UIKit

//Question Link : https://leetcode.com/problems/3sum-closest/
/*
 Given an integer array nums of length n and an integer target, find three integers in nums such that the sum is closest to target.

 Return the sum of the three integers.

 You may assume that each input would have exactly one solution.

  

 Example 1:

 Input: nums = [-1,2,1,-4], target = 1
 Output: 2
 Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
 Example 2:

 Input: nums = [0,0,0], target = 1
 Output: 0
 Explanation: The sum that is closest to the target is 0. (0 + 0 + 0 = 0).
  

 Constraints:

 3 <= nums.length <= 500
 -1000 <= nums[i] <= 1000
 -104 <= target <= 104
 */

func threeSum(_ nums: [Int]) -> [[Int]] {
    var sortedNums = nums.sorted()
    var solutionSet = [[Int]]()
    print("in sorted if: \(sortedNums)")
    for (index, currentValue) in sortedNums.enumerated() {
        var answer: Int
        var leftPointerIndex = index + 1
        var rightPointerIndex = sortedNums.count - 1
        print("inside for index: \(index) currentVal: \(currentValue) lPTR: \(leftPointerIndex) rptr: \(rightPointerIndex)")
        while leftPointerIndex < rightPointerIndex {
            answer = currentValue + sortedNums[leftPointerIndex] + sortedNums[rightPointerIndex]
            print("in while ans: \(answer) currentV: \(currentValue) slptr: \(sortedNums[leftPointerIndex]) srpte: \(sortedNums[rightPointerIndex])")
            if answer > 0 {
                rightPointerIndex -= 1
                print("> 0 rptr \(rightPointerIndex)")
            } else if answer < 0 {
                leftPointerIndex += 1
                print("< 0 lptr \(leftPointerIndex)")
            } else if answer == 0 {
                let val = [currentValue, sortedNums[leftPointerIndex], sortedNums[rightPointerIndex]]
                if (!solutionSet.contains(val))
                {
                    solutionSet.append(val)
                }
                
                print("= 0 solution ans: \(currentValue) slptr: \(sortedNums[leftPointerIndex]) srpte: \(sortedNums[rightPointerIndex])")
                leftPointerIndex += 1
                print("second while \(leftPointerIndex)")
            }
            
        }
    }
    
    return solutionSet
}

let result = threeSum([-1, 0 ,1,2,-1,-4])
let result2 = threeSum([-2,0,1,1,2])
print("result is : \(result), result2 is: \(result2)")
