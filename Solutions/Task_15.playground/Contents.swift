/*
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:
 - Open brackets must be closed by the same type of brackets.
 - Open brackets must be closed in the correct order.
 - Every close bracket has a corresponding open bracket of the same type.
*/

import Foundation
import XCTest

class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }
        guard s.contains(where: { ["(", ")", "[", "]", "{", "}"].contains($0) }) else { return false }
        
        var stack = [Character]()
        let dict: [Character: Character] = [
            "(": ")",
            "[": "]",
            "{": "}"
        ]
        
        for character in s {
            if dict[character] != nil {
                stack.append(character)
            } else if let lastElement = stack.popLast(), character == dict[lastElement] {
                continue
            } else {
                return false
            }
        }
        
        return stack.isEmpty
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
    
    func testMethodMustBeEqualeToWrittenString1() {
        XCTAssertEqual(sut.isValid("()"), true) // succeed
    }
    
    func testMethodMustBeEqualeToWrittenString2() {
        XCTAssertEqual(sut.isValid("(){}[]"), true) // succeed
    }
    
    func testMethodMustBeEqualeToWrittenString3() {
        XCTAssertEqual(sut.isValid("{{{{"), false) // succeed
    }
}

UniteTesting.defaultTestSuite.run()
