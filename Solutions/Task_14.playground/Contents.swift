/*
You own a Goal Parser that can interpret a string command. The command consists
of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will
interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string
"al". The interpreted strings are then concatenated in the original order.

Given the string command, return the Goal Parser's interpretation of command.
*/

import Foundation
import XCTest

class Solution {
    func interpret(_ command: String) -> String {
        command.replacingOccurrences(of: "()", with: "o").replacingOccurrences(of: "(al)", with: "al")
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
        XCTAssertEqual(sut.interpret("G()(al)"), "Goal") // succeed
    }
    
    func testMethodMustBeEqualeToWrittenString2() {
        XCTAssertEqual(sut.interpret("G()()()()(al)"), "Gooooal") // succeed
    }
    
    func testMethodMustBeEqualeToWrittenString3() {
        XCTAssertEqual(sut.interpret("(al)G(al)()()G"), "alGalooG") // succeed
    }
}

UniteTesting.defaultTestSuite.run()
