/*
 You are given the root of a binary tree that consists of exactly 3 nodes:
 the root, its left child, and its right child.

 Return true if the value of the root is equal to the sum of
 the values of its two children, or false otherwise.
 
 Input: root = [10,4,6]
 Output: true

 Input: root = [5,3,1]
 Output: false
 */

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init() { self.val = 0; self.left = nil; self.right = nil; }
    init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


import Foundation
import XCTest

class Solution {
    func checkTree(_ root: TreeNode?) -> Bool {
        guard let leftVal = root?.left?.val else { return false }
        guard let rightVal = root?.right?.val else { return false }
        
        return (leftVal + rightVal) == root?.val
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
    
    func testCheckSumValuesMustBeFalse() {
        let tree = TreeNode(10, TreeNode(4), TreeNode(6))
        let isEqually = solution.checkTree(tree)
        XCTAssertEqual(isEqually, true)
    }
    
    func testCheckSumValuesMustBeTrue() {
        let tree = TreeNode(5, TreeNode(3), TreeNode(1))
        let isEqually = solution.checkTree(tree)
        XCTAssertEqual(isEqually, false)
    }
}

UniteTesting.defaultTestSuite.run()
// Runtime: 8 ms
// Memory Usage: 14 MB
