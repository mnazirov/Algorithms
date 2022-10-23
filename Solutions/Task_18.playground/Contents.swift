/*
 Given an array of integers nums which is sorted in ascending order, and an integer target,
 write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

 You must write an algorithm with O(log n) runtime complexity.
 
 Input: nums = [-1,0,3,5,9,12], target = 9
 Output: 4
 Explanation: 9 exists in nums and its index is 4
 
 Input: nums = [-1,0,3,5,9,12], target = 2
 Output: -1
 Explanation: 2 does not exist in nums so return -1
*/

import Foundation
import XCTest

class Solution {
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        
        while low <= high {
            let mid = (low + high) / 2
            let guess = nums[mid]
            
            if guess == target {
                return mid
            } else if guess > target {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        
        return -1
    }
}

class UniteTesting: XCTestCase {
    
    private var solution: Solution!
    
    override func setUp() {
        super.setUp()
        solution = Solution()
    }
    
    override func tearDown() {
        solution = nil
        super.tearDown()
    }
    
    func testValueSearchMethodMustBeEqualIndex() {
        let numbers = [-1,0,3,5,9,12]
        let target = 9
        let foundIndex = solution.search(numbers, target)
        XCTAssertEqual(foundIndex, 4)
    }
    
    func testValueSearchMethodMustBeEqualMinusOne() {
        let numbers = [-1,0,3,5,9,12]
        let target = 2
        let foundIndex = solution.search(numbers, target)
        XCTAssertEqual(foundIndex, -1)
    }
}

UniteTesting.defaultTestSuite.run()
// Runtime: 511 ms
// Memory Usage: 14.3 MB
