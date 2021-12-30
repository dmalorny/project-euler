import XCTest
@testable import main

final class problemTests: XCTestCase {
    func testProblem1() throws {
        XCTAssertEqual(problem1(max: 10), 23)
        XCTAssertEqual(problem1(max: 1000), 233168)
    }

    func testProblem2() throws {
        XCTAssertEqual(problem2(max: 100), 44)
        XCTAssertEqual(problem2(max: 4000000), 4613732)
    }

    func testProblem3() throws {
        XCTAssertEqual(problem3(n: 13195), 29)
        XCTAssertEqual(problem3(n: 600851475143), 6857)
    }

    func testProblem4() throws {
        XCTAssertEqual(problem4(lo: 10, hi: 99), 9009)
        XCTAssertEqual(problem4(lo: 100, hi: 999), 906609)
    }

    func testProblem5() throws {
        XCTAssertEqual(problem5(max: 10), 2520)
        //XCTAssertEqual(problem5(max: 20), 232792560)
    }
    func testProblem6() throws {
        XCTAssertEqual(problem6(n: 10), 2640)
        XCTAssertEqual(problem6(n: 100), 25164150)
    }
    func testProblem7() throws {
        XCTAssertEqual(problem7(n: 6), 13)
        //XCTAssertEqual(problem7(n: 10001), 104743)
    }
    func testProblem8() throws {
        XCTAssertEqual(problem8(n: 4), 5832)
        XCTAssertEqual(problem8(n: 13), 23514624000)
    }
    func testProblem9() throws {
        XCTAssertEqual(problem9(sum: 12), 60)
        XCTAssertEqual(problem9(sum: 1000), 31875000)
    }
    func testProblem10() throws {
        XCTAssertEqual(problem10(max: 10), 17)
        //XCTAssertEqual(problem10(max: 2000000), 142913828922)
    }
    func testProblem11() throws {
        XCTAssertEqual(problem11(), 70600674)
    }
    func testProblem12() throws {
        XCTAssertEqual(problem12(n: 5), 28)
        //XCTAssertEqual(problem12(n: 500), 76576500)
    }
    func testProblem13() throws {
        XCTAssertEqual(problem13(), 5537376230)
    }
    func testProblem14() throws {
        XCTAssertEqual(problem14(n: 1000000), 837799)
    }
    func testProblem15() throws {
        XCTAssertEqual(problem15(maxX: 2, maxY: 2), 6)
        XCTAssertEqual(problem15(maxX: 20, maxY: 20), 137846528820)
    }
    func testProblem16() throws {
        XCTAssertEqual(problem16(n: 15), 26)
        XCTAssertEqual(problem16(n: 1000), 1366)
    }
    func testProblem17() throws {
        XCTAssertEqual(problem17(max: 5), 19)
        XCTAssertEqual(problem17(max: 1000), 21124)
    }
    func testProblem18() throws {
        XCTAssertEqual(problem18(), 1074)
    }
    func testProblem19() throws {
        XCTAssertEqual(problem19(), 171)
    }
    func testProblem20() throws {
        XCTAssertEqual(problem20(10), 27)
        XCTAssertEqual(problem20(100), 648)
    }
    func testProblem21() throws {
        XCTAssertEqual(problem21(max: 250), 220)
        XCTAssertEqual(problem21(max: 10000), 31626)
    }
//    func testProblem22() throws {
//        XCTAssertEqual(problem22(), 871198282)
//    }
}
