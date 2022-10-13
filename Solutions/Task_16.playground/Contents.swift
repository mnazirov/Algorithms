/*
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.
 
 The 2 requirements of the question are:
 - Move all the 0's to the end of array.
 - All the non-zero elements must retain their original order.
*/

import Foundation
import XCTest

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 1 else { return }
        
        var index = 0
        
        for item in nums where item != 0 {
            nums[index] = item
            index += 1
        }
        
        for item in index..<nums.count {
            nums[item] = 0
        }
    }
}

class UniteTesting: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testMethodMustBeEqualeToWrittenString1() {
        var nums = [0, 1, 0, 3, 12]
        sut.moveZeroes(&nums)
        XCTAssertEqual(nums, [1, 3, 12, 0, 0]) // succeed
    }
    
    func testMethodMustBeEqualeToWrittenString2() {
        var nums = [0]
        sut.moveZeroes(&nums)
        XCTAssertEqual(nums, [0]) // succeed
    }
    
    func testMethodMustBeEqualeToWrittenString3() {
        var nums = [0, 0, 0 , 1]
        sut.moveZeroes(&nums)
        XCTAssertEqual(nums, [1, 0, 0 , 0]) // succeed
    }
}

UniteTesting.defaultTestSuite.run()
