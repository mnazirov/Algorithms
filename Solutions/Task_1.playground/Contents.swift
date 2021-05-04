/*
 Given an array nums. We define a running sum of
 an array as runningSum[i] = sum(nums[0]…nums[i]).

 Return the running sum of nums.
 
*/

let nums1 = [1,2,3,4]
let nums2 = [1,1,1,1,1]
let nums3 = [3,1,2,10,1]


func runningSum(_ nums: [Int]) -> [Int] {
    var sum: [Int] = []
    for number in 1...nums.count {
        let currentArray = nums.prefix(number)
        let totalArray = currentArray.reduce(0, +)
        sum.append(totalArray)
    }
    
    return sum
}

runningSum(nums1)
// Input: nums1 = [1,1,1,1,1]
// Output: [1,2,3,4,5]

runningSum(nums2)
// Input: nums2 = [1,1,1,1,1]
// Output: [1,2,3,4,5]

runningSum(nums3)
// Input: nums3 = [3,1,2,10,1]
// Output: [3,4,6,16,17]
