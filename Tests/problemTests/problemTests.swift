import XCTest
@testable import ProjectEuler

final class problemTests: XCTestCase {
    func testProblem1() throws {
        XCTAssertEqual(problem1().run(max: 10), 23)
        XCTAssertEqual(problem1().run(max: 1000), 233168)
    }

    func testProblem2() throws {
        XCTAssertEqual(problem2().run(max: 100), 44)
        XCTAssertEqual(problem2().run(max: 4000000), 4613732)
    }

    func testProblem3() throws {
        XCTAssertEqual(problem3().run(n: 13195), 29)
        XCTAssertEqual(problem3().run(n: 600851475143), 6857)
    }

    func testProblem4() throws {
        XCTAssertEqual(problem4().run(lo: 10, hi: 99), 9009)
        XCTAssertEqual(problem4().run(lo: 100, hi: 999), 906609)
    }

    func testProblem5() throws {
        XCTAssertEqual(problem5().run(max: 10), 2520)
        //XCTAssertEqual(problem5().run(max: 20), 232792560)
    }
    func testProblem6() throws {
        XCTAssertEqual(problem6().run(n: 10), 2640)
        XCTAssertEqual(problem6().run(n: 100), 25164150)
    }
    func testProblem7() throws {
        XCTAssertEqual(problem7().run(n: 6), 13)
        //XCTAssertEqual(problem7(n: 10001), 104743)
    }
    func testProblem8() throws {
        XCTAssertEqual(problem8().run(n: 4), 5832)
        XCTAssertEqual(problem8().run(n: 13), 23514624000)
    }
    func testProblem9() throws {
        XCTAssertEqual(problem9().run(sum: 12), 60)
        XCTAssertEqual(problem9().run(sum: 1000), 31875000)
    }
    func testProblem10() throws {
        XCTAssertEqual(problem10().run(max: 10), 17)
        //XCTAssertEqual(problem10(max: 2000000), 142913828922)
    }
    func testProblem11() throws {
        XCTAssertEqual(problem11().run(), 70600674)
    }
    func testProblem12() throws {
        XCTAssertEqual(problem12().run(n: 5), 28)
        //XCTAssertEqual(problem12(n: 500), 76576500)
    }
    func testProblem13() throws {
        XCTAssertEqual(problem13().run(), 5537376230)
    }
    func testProblem14() throws {
        XCTAssertEqual(problem14().run(n: 1000000), 837799)
    }
    func testProblem15() throws {
        XCTAssertEqual(problem15().run(maxX: 2, maxY: 2), 6)
        XCTAssertEqual(problem15().run(maxX: 20, maxY: 20), 137846528820)
    }
    func testProblem16() throws {
        XCTAssertEqual(problem16().run(n: 15), 26)
        XCTAssertEqual(problem16().run(n: 1000), 1366)
    }
    func testProblem17() throws {
        XCTAssertEqual(problem17().run(max: 5), 19)
        XCTAssertEqual(problem17().run(max: 1000), 21124)
    }
    func testProblem18() throws {
        let triangle_a = """
        3
        7 4
        2 4 6
        8 5 9 3
        """
        
        let triangle_b = """
        75
        95 64
        17 47 82
        18 35 87 10
        20 04 82 47 65
        19 01 23 75 03 34
        88 02 77 73 07 63 67
        99 65 04 28 06 16 70 92
        41 41 26 56 83 40 80 70 33
        41 48 72 33 47 32 37 16 94 29
        53 71 44 65 25 43 91 52 97 51 14
        70 11 33 28 77 73 17 78 39 68 17 57
        91 71 52 38 17 14 91 43 58 50 27 29 48
        63 66 04 68 89 53 67 30 73 16 69 87 40 31
        04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
        """
        
        XCTAssertEqual(problem18().run(str: triangle_a), 23)
        XCTAssertEqual(problem18().run(str: triangle_b), 1074)
    }
    func testProblem19() throws {
        XCTAssertEqual(problem19().run(), 171)
    }
    func testProblem20() throws {
        XCTAssertEqual(problem20().run(10), 27)
        XCTAssertEqual(problem20().run(100), 648)
    }
    func testProblem21() throws {
        XCTAssertEqual(problem21().run(max: 250), 220)
        XCTAssertEqual(problem21().run(max: 10000), 31626)
    }
    func testProblem22() throws {
        XCTAssertEqual(problem22().run(), 871198282)
    }
    func testProblem23() throws {
        XCTAssertEqual(problem23().run(23), 276)
        XCTAssertEqual(problem23().run(24), 276)
        //XCTAssertEqual(problem23(28123), 4179871)
    }
    func testProblem24() throws {
        XCTAssertEqual(problem24().run(p: 2, n: 4), 120)
        XCTAssertEqual(problem24().run(p: 9, n: 1000000), 2783915460)
    }
    func testProblem25() throws {
        XCTAssertEqual(problem25().run(3), 12)
        //XCTAssertEqual(problem25(1000), 4782)
    }
    func testProblem26() throws {
        XCTAssertEqual(problem26().run(max: 10), 7)
        XCTAssertEqual(problem26().run(max: 1000), 983)
    }
    func testProblem27() throws {
        XCTAssertEqual(problem27().run(min: -9, max: 9), -21)
        //XCTAssertEqual(problem27(min: -999, max: 999), -59231)
    }
    func testProblem28() throws {
        XCTAssertEqual(problem28().run(5), 101)
        XCTAssertEqual(problem28().run(1001), 669171001)
    }
    func testProblem29() throws {
        XCTAssertEqual(problem29().run(5), 15)
        XCTAssertEqual(problem29().run(100), 9183)
    }
    func testProblem30() throws {
        XCTAssertEqual(problem30().run(4), 19316)
        XCTAssertEqual(problem30().run(5), 443839)
    }
    func testProblem31() throws {
        XCTAssertEqual(problem31().run(value: 5), 4)
        XCTAssertEqual(problem31().run(value: 200), 73682)
    }
    func testProblem32() throws {
        XCTAssertEqual(problem32().run(), 45228)
    }
    func testProblem33() throws {
        XCTAssertEqual(problem33().run(), 100)
    }
    func testProblem34() throws {
        XCTAssertEqual(problem34().run(), 40730)
    }
    func testProblem35() throws {
        XCTAssertEqual(problem35().run(max: 100), 13)
        //XCTAssertEqual(problem35().run(max: 1000000), 55)
    }
    func testProblem36() throws {
        XCTAssertEqual(problem36().run(max: 100), 157)
        XCTAssertEqual(problem36().run(max: 1000000), 872187)
    }
    func testProblem37() throws {
        XCTAssertEqual(problem37().run(max: 100), 186)
        //XCTAssertEqual(problem37().run(max: 1000000), 748317)
    }
    func testProblem38() throws {
        XCTAssertEqual(problem38().run(), 932718654)
    }
    func testProblem39() throws {
        XCTAssertEqual(problem39().run(max: 120), 120)
        //XCTAssertEqual(problem39(max: 1000), 840)
    }
    func testProblem40() throws {
        XCTAssertEqual(problem40().run(), 210)
    }
    func testProblem41() throws {
        XCTAssertEqual(problem41().run(), 7652413)
    }
    func testProblem42() throws {
        XCTAssertEqual(problem42().run(), 162)
    }
    func testProblem43() throws {
        XCTAssertEqual(problem43().run(), 16695334890)
    }
    func testProblem44() throws {
        XCTAssertEqual(problem44().run(), 5482660)
    }
    func testProblem45() throws {
        XCTAssertEqual(problem45().run(), 1533776805)
    }
    func testProblem46() throws {
        XCTAssertEqual(problem46().run(), 5777)
    }
    func testProblem47() throws {
        XCTAssertEqual(problem47().run(n: 2), 14)
        XCTAssertEqual(problem47().run(n: 3), 644)
        XCTAssertEqual(problem47().run(n: 4), 134043)
    }
    func testProblem48() throws {
        XCTAssertEqual(problem48().run(max: 10), "0405071317")
        XCTAssertEqual(problem48().run(max: 100), "9027641920")
        XCTAssertEqual(problem48().run(max: 1000), "9110846700")
    }
    func testProblem49() throws {
        XCTAssertEqual(problem49().run(), "296962999629")
    }
    func testProblem50() throws {
        XCTAssertEqual(problem50().run(max: 100), 41)
        XCTAssertEqual(problem50().run(max: 1000), 953)
        XCTAssertEqual(problem50().run(max: 1000000), 997651)
    }
    func testProblem51() throws {
        XCTAssertEqual(problem51().run(expectedSize: 6, primedigits: 2), 13)
        XCTAssertEqual(problem51().run(expectedSize: 7, primedigits: 5), 56003)
        //XCTAssertEqual(problem51(expectedSize: 8, primedigits: 6), 121313)
    }
    func testProblem52() throws {
        XCTAssertEqual(problem52().run(to: 2), 125874)
        XCTAssertEqual(problem52().run(to: 6), 142857)
    }
    func testProblem53() throws {
        XCTAssertEqual(problem53().run(maxN: 10, maxResult: 100), 7)
        XCTAssertEqual(problem53().run(maxN: 100, maxResult: 1000000), 4075)
    }
    func testProblem54() throws {
        XCTAssertEqual(problem54().run(player1: "5H 5C 6S 7S KD", player2: "2C 3S 8S 8D TD"), false)
        XCTAssertEqual(problem54().run(player1: "5D 8C 9S JS AC", player2: "2C 5C 7D 8S QH"), true)
        XCTAssertEqual(problem54().run(player1: "2D 9C AS AH AC", player2: "3D 6D 7D TD QD"), false)
        XCTAssertEqual(problem54().run(player1: "4D 6S 9H QH QC", player2: "3D 6D 7H QD QS"), true)
        XCTAssertEqual(problem54().run(player1: "2H 2D 4C 4D 4S", player2: "3C 3D 3S 9S 9D"), true)
        XCTAssertEqual(problem54().run(), 376)
    }
    func testProblem55() throws {
        XCTAssertEqual(problem55().isLychrel(47), false)
        XCTAssertEqual(problem55().isLychrel(349), false)
        XCTAssertEqual(problem55().isLychrel(196), true)
        XCTAssertEqual(problem55().isLychrel(4994), true)
        XCTAssertEqual(problem55().run(), 249)
    }
    func testProblem56() throws {
        XCTAssertEqual(problem56().run(n: 9), 45)
        XCTAssertEqual(problem56().run(n: 99), 972)
    }
    func testProblem57() throws {
        XCTAssertEqual(problem57().run(max: 8), 1)
        XCTAssertEqual(problem57().run(max: 100), 15)
        XCTAssertEqual(problem57().run(max: 1000), 153)
    }
    func testProblem67() throws {
        XCTAssertEqual(problem67().run(), 7273)
    }
    func testProblem69() throws {
        XCTAssertEqual(problem69().run(max: 10), 6)
        XCTAssertEqual(problem69().run(max: 1000000), 510510)
    }
    func testProblem79() throws {
        XCTAssertEqual(problem79().run(), 73162890)
    }
}
