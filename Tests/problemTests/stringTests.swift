import XCTest
@testable import main

final class stringTests: XCTestCase {
    func testWordValue() throws {
        XCTAssertEqual("COLIN".wordValue, 53)
    }
}
