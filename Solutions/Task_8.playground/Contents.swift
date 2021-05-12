/*
Given the array nums, for each nums[i] find out how many numbers in the array
are smaller than it. That is, for each nums[i] you have to count the number
of valid j's such that j != i and nums[j] < nums[i].
*/

let nums = [8,1,2,2,3]
let nums2 = [6,5,4,8]
let nums3 = [7,7,7,7]

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var result: [Int] = []
    
    for index in 0..<nums.count {
        let count = nums.filter { num in nums[index] > num }.count
        result.append(count)
    }
    
    return result
}

smallerNumbersThanCurrent(nums)
// Input: nums = [8,1,2,2,3]
// Output: [4,0,1,1,3]

smallerNumbersThanCurrent(nums2)
// Input: nums = [6,5,4,8]
// Output: [2,1,0,3]

smallerNumbersThanCurrent(nums3)
// Input: nums = [7,7,7,7]
// Output: [0,0,0,0]
