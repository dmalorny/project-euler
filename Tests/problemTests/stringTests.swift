import XCTest
@testable import euler

final class stringTests: XCTestCase {
    func testSubstring() throws {
        XCTAssertEqual("This is a Test".substring(start: 5, length: 2), "is")
        XCTAssertEqual("This is a Test".left(4), "This")
        XCTAssertEqual("This is a Test".right(4), "Test")
    }
    
    func testPalindrome() throws {
        XCTAssertEqual("OTTO".isPalindrome(), true)
        XCTAssertEqual("TEST".isPalindrome(), false)
    }
    
    func testPandigital() throws
    {
        XCTAssertEqual("1234".isPandigital(from: 1, to: 4), true)
        XCTAssertEqual("4321".isPandigital(from: 1, to: 4), true)
        XCTAssertEqual("5876".isPandigital(from: 5, to: 8), true)
        XCTAssertEqual("4321".isPandigital(from: 1, to: 5), false)
        XCTAssertEqual("14352".isPandigital(from: 1, to: 5), true)
        XCTAssertEqual("123456789".isPandigital(from: 1, to: 9), true)
        XCTAssertEqual("975318642".isPandigital(from: 1, to: 9), true)
        XCTAssertEqual("975308642".isPandigital(from: 1, to: 9), false)
        XCTAssertEqual("1406357289".isPandigital(from: 0, to: 9), true)
    }
    
    func testWordValue() throws {
        XCTAssertEqual("COLIN".wordValue, 53)
        XCTAssertEqual("SKY".wordValue, 55)
    }
}
