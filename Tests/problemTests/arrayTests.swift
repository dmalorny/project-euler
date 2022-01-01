import XCTest
@testable import ProjectEuler

final class arrayTests: XCTestCase {
    func testArraySum() throws {
        XCTAssertEqual(array_sum([1,2,3,4]), 10)
        XCTAssertEqual(array_sum([]), 0)
        XCTAssertEqual(array_sum([3,3,3]), 9)
    }
    
    func testDisgits() throws {
        XCTAssertEqual(digits(1), [1])
        XCTAssertEqual(digits(7), [7])
        XCTAssertEqual(digits(123), [1,2,3])
        XCTAssertEqual(digits(4711), [4,7,1,1])
    }
    
    func testFromDisgits() throws {
        XCTAssertEqual(fromDigits([1]), 1)
        XCTAssertEqual(fromDigits([7]), 7)
        XCTAssertEqual(fromDigits([1,2,3]), 123)
        XCTAssertEqual(fromDigits([4,7,1,1]), 4711)
    }
    
    func testSplitTextToArray() throws {
        let text1 = """
        1 2 3
        4 5 6
        7 8 9
        """
        let text2 = """
        3
        7 4
        2 4 6
        8 5 9 3
        """
        
        XCTAssertEqual(split_text_to_array(str: text1), [[1,2,3],[4,5,6],[7,8,9]])
        XCTAssertEqual(split_text_to_array(str: text2), [[3],[7,4],[2,4,6],[8,5,9,3]])
    }
}
