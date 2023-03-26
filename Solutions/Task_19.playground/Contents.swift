/*
 Write an efficient algorithm that searches for a value target in an m x n integer matrix matrix.
 This matrix has the following properties:

 Integers in each row are sorted from left to right.
 The first integer of each row is greater than the last integer of the previous row.
 
 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
 Output: true
 
 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
 Output: false
*/

import Foundation
import XCTest

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard !matrix.isEmpty else { return false }
        
        let nums = matrix.flatMap({ $0 })
        var low = 0
        var high = nums.count - 1
        
        while low <= high {
            let mid = (low + high) / 2
            let guess = nums[mid]
            
            if guess == target {
                return true
            } else if guess > target {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        
        return false
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
    
    func testValueSearchMatrixMustBeTrue() {
        let matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
        let target = 3
        let isHasValue = solution.searchMatrix(matrix, target)
        XCTAssertEqual(isHasValue, true)
    }
    
    func testValueSearchMatrixMustBeFalse() {
        let matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
        let target = 13
        let isHasValue = solution.searchMatrix(matrix, target)
        XCTAssertEqual(isHasValue, false)
    }
}

UniteTesting.defaultTestSuite.run()
// Runtime: 511 ms
// Memory Usage: 14.3 MB
