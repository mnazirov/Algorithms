/*
Given two arrays of integers nums and index. Your task is to create target
array under the following rules:

Initially target array is empty.
- From left to right read nums[i] and index[i], insert at index index[i]
  the value nums[i] in target array.
- Repeat the previous step until there are no elements to read in nums and index.
- Return the target array.

It is guaranteed that the insertion operations will be valid.
*/

import UIKit
import XCTest

class Solution { 
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var target: [Int] = []
        for i in 0..<nums.count {
            target.insert(nums[i], at: index[i])
        }
        return target
    }
}


class UniteTesting: XCTestCase {
    var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testMethodMustBeEqualeToArrayWriten1() {
        XCTAssertEqual(sut.createTargetArray([0,1,2,3,4],[0,1,2,2,1]), [0,4,1,3,2]) // succeed
    }
    
    func testMethodMustBeEqualeToArrayWriten2() {
        XCTAssertEqual(sut.createTargetArray([1,2,3,4,0], [0,1,2,3,0]), [0,1,2,3,4]) // succeed
    }
    
    func testMethodMustBeEqualeToArrayWriten3() {
        XCTAssertEqual(sut.createTargetArray([1], [0]), [1]) // succeed
    }
}

UniteTesting.defaultTestSuite.run()
