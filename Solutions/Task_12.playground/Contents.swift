/*
We are given a list nums of integers representing a list compressed with run-length encoding.

Consider each adjacent pair of elements [freq, val] = [nums[2*i], nums[2*i+1]]
(with i >= 0).  For each such pair, there are freq elements with value val
concatenated in a sublist. Concatenate all the sublists from left to right
to generate the decompressed list.

Return the decompressed list.
 
Constraints:
2 <= nums.length <= 100
nums.length % 2 == 0
1 <= nums[i] <= 100
*/

let nums = [1,2,3,4]
let nums2 = [1,1,2,3]

func decompressRLElist(_ nums: [Int]) -> [Int] {

    guard 2 <= nums.count
            && nums.count <= 100
            && nums.count % 2 == 0 else { return [0] }

    var result: [Int] = []
    var startIndex = 0
    var finishIndex = 1

    for _ in 1...nums.count / 2 {
        let currentNums = nums[startIndex...finishIndex]

        guard let firstValue = currentNums.first,
              let lastValue = currentNums.last else { return [0] }

        result += Array(repeating: lastValue, count: firstValue)

        startIndex += 2
        finishIndex += 2
    }

    return result
}

decompressRLElist(nums)
// Input: nums = [1,2,3,4]
// Output: [2,4,4,4]

decompressRLElist(nums2)
// Input: nums = [1,1,2,3]
// Output: [1,3,3]

