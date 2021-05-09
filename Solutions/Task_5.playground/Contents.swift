/*
Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].
Return the array in the form [x1,y1,x2,y2,...,xn,yn].
*/

let nums = [2,5,1,3,4,7]
let n = 3

let nums2 = [1,2,3,4,4,3,2,1]
let n2 = 4

let nums3 = [1,1,2,2]
let n3 = 2

func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    var result: [Int] = []
    
    for (x, y)in zip(nums[..<n], nums[n...]) {
        result.append(contentsOf: [x, y])
    }
    
    return result
}

shuffle(nums, n)
// Input: nums = [2,5,1,3,4,7], n = 3
// Output: [2,3,5,4,1,7]

shuffle(nums2, n2)
// Input: nums = [1,2,3,4,4,3,2,1], n = 4
// Output: [1,4,2,3,3,2,4,1]

shuffle(nums3, n3)
// Input: nums = [1,1,2,2], n = 2
// Output: [1,2,1,2]





