import XCTest
@testable import ProjectEuler

final class problemTests: XCTestCase {
    func testProblem1() throws {
        let p = problem1()
        XCTAssertEqual(p.run(max: 10), 23)
        XCTAssertEqual(p.run(max: 1000), 233168)
    }

    func testProblem2() throws {
        let p = problem2()
        XCTAssertEqual(p.run(max: 100), 44)
        XCTAssertEqual(p.run(max: 4000000), 4613732)
    }

    func testProblem3() throws {
        let p = problem3()
        XCTAssertEqual(p.run(n: 13195), 29)
        XCTAssertEqual(p.run(n: 600851475143), 6857)
    }

    func testProblem4() throws {
        let p = problem4()
        XCTAssertEqual(p.run(lo: 10, hi: 99), 9009)
        XCTAssertEqual(p.run(lo: 100, hi: 999), 906609)
    }

    func testProblem5() throws {
        let p = problem5()
        XCTAssertEqual(p.run(max: 10), 2520)
        //XCTAssertEqual(p.run(max: 20), 232792560)
    }
    func testProblem6() throws {
        let p = problem6()
        XCTAssertEqual(p.run(n: 10), 2640)
        XCTAssertEqual(p.run(n: 100), 25164150)
    }
    func testProblem7() throws {
        let p = problem7()
        XCTAssertEqual(p.run(n: 6), 13)
        //XCTAssertEqual(problem7(n: 10001), 104743)
    }
    func testProblem8() throws {
        let p = problem8()
        XCTAssertEqual(p.run(n: 4), 5832)
        XCTAssertEqual(p.run(n: 13), 23514624000)
    }
    func testProblem9() throws {
        let p = problem9()
        XCTAssertEqual(p.run(sum: 12), 60)
        XCTAssertEqual(p.run(sum: 1000), 31875000)
    }
    func testProblem10() throws {
        let p = problem10()
        XCTAssertEqual(p.run(max: 10), 17)
        //XCTAssertEqual(problem10(max: 2000000), 142913828922)
    }
    func testProblem11() throws {
        let p = problem11()
        XCTAssertEqual(p.run(), 70600674)
    }
    func testProblem12() throws {
        let p = problem12()
        XCTAssertEqual(p.run(n: 5), 28)
        //XCTAssertEqual(problem12(n: 500), 76576500)
    }
    func testProblem13() throws {
        let p = problem13()
        XCTAssertEqual(p.run(), 5537376230)
    }
    func testProblem14() throws {
        let p = problem14()
        XCTAssertEqual(p.run(n: 1000000), 837799)
    }
    func testProblem15() throws {
        let p = problem15()
        XCTAssertEqual(p.run(maxX: 2, maxY: 2), 6)
        XCTAssertEqual(p.run(maxX: 20, maxY: 20), 137846528820)
    }
    func testProblem16() throws {
        let p = problem16()
        XCTAssertEqual(p.run(n: 15), 26)
        XCTAssertEqual(p.run(n: 1000), 1366)
    }
    func testProblem17() throws {
        let p = problem17()
        XCTAssertEqual(p.run(max: 5), 19)
        XCTAssertEqual(p.run(max: 1000), 21124)
    }
    func testProblem18() throws {
        let p = problem18()
        
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
        
        XCTAssertEqual(p.run(str: triangle_a), 23)
        XCTAssertEqual(p.run(str: triangle_b), 1074)
    }
    func testProblem19() throws {
        let p = problem19()
        XCTAssertEqual(p.run(), 171)
    }
    func testProblem20() throws {
        let p = problem20()
        XCTAssertEqual(p.run(10), 27)
        XCTAssertEqual(p.run(100), 648)
    }
    func testProblem21() throws {
        let p = problem21()
        XCTAssertEqual(p.run(max: 250), 220)
        XCTAssertEqual(p.run(max: 10000), 31626)
    }
    func testProblem22() throws {
        let p = problem22()
        XCTAssertEqual(p.run(), 871198282)
    }
    func testProblem23() throws {
        let p = problem23()
        XCTAssertEqual(p.run(23), 276)
        XCTAssertEqual(p.run(24), 276)
        //XCTAssertEqual(problem23(28123), 4179871)
    }
    func testProblem24() throws {
        let p = problem24()
        XCTAssertEqual(p.run(p: 2, n: 4), 120)
        XCTAssertEqual(p.run(p: 9, n: 1000000), 2783915460)
    }
    func testProblem25() throws {
        let p = problem25()
        XCTAssertEqual(p.run(3), 12)
        //XCTAssertEqual(problem25(1000), 4782)
    }
    func testProblem26() throws {
        let p = problem26()
        XCTAssertEqual(p.run(max: 10), 7)
        XCTAssertEqual(p.run(max: 1000), 983)
    }
    func testProblem27() throws {
        let p = problem27()
        XCTAssertEqual(p.run(min: -9, max: 9), -21)
        //XCTAssertEqual(problem27(min: -999, max: 999), -59231)
    }
    func testProblem28() throws {
        let p = problem28()
        XCTAssertEqual(p.run(5), 101)
        XCTAssertEqual(p.run(1001), 669171001)
    }
    func testProblem29() throws {
        let p = problem29()
        XCTAssertEqual(p.run(5), 15)
        XCTAssertEqual(p.run(100), 9183)
    }
    func testProblem30() throws {
        let p = problem30()
        XCTAssertEqual(p.run(4), 19316)
        XCTAssertEqual(p.run(5), 443839)
    }
    func testProblem31() throws {
        let p = problem31()
        XCTAssertEqual(p.run(value: 5), 4)
        XCTAssertEqual(p.run(value: 200), 73682)
    }
    func testProblem32() throws {
        let p = problem32()
        XCTAssertEqual(p.run(), 45228)
    }
    func testProblem33() throws {
        let p = problem33()
        XCTAssertEqual(p.run(), 100)
    }
    func testProblem34() throws {
        let p = problem34()
        XCTAssertEqual(p.run(), 40730)
    }
    func testProblem35() throws {
        let p = problem35()
        XCTAssertEqual(p.run(max: 100), 13)
        //XCTAssertEqual(p.run(max: 1000000), 55)
    }
    func testProblem36() throws {
        let p = problem36()
        XCTAssertEqual(p.run(max: 100), 157)
        XCTAssertEqual(p.run(max: 1000000), 872187)
    }
    func testProblem37() throws {
        let p = problem37()
        XCTAssertEqual(p.run(max: 100), 186)
        //XCTAssertEqual(p.run(max: 1000000), 748317)
    }
    func testProblem38() throws {
        let p = problem38()
        XCTAssertEqual(p.run(), 932718654)
    }
    func testProblem39() throws {
        let p = problem39()
        XCTAssertEqual(p.run(max: 120), 120)
        //XCTAssertEqual(problem39(max: 1000), 840)
    }
    func testProblem40() throws {
        let p = problem40()
        XCTAssertEqual(p.run(), 210)
    }
    func testProblem41() throws {
        let p = problem41()
        XCTAssertEqual(p.run(), 7652413)
    }
    func testProblem42() throws {
        let p = problem42()
        XCTAssertEqual(p.run(), 162)
    }
    func testProblem43() throws {
        let p = problem43()
        XCTAssertEqual(p.run(), 16695334890)
    }
    func testProblem44() throws {
        let p = problem44()
        XCTAssertEqual(p.run(), 5482660)
    }
    func testProblem45() throws {
        let p = problem45()
        XCTAssertEqual(p.run(), 1533776805)
    }
    func testProblem46() throws {
        let p = problem46()
        XCTAssertEqual(p.run(), 5777)
    }
    func testProblem47() throws {
        let p = problem47()
        XCTAssertEqual(p.run(n: 2), 14)
        XCTAssertEqual(p.run(n: 3), 644)
        XCTAssertEqual(p.run(n: 4), 134043)
    }
    func testProblem48() throws {
        let p = problem48()
        XCTAssertEqual(p.run(max: 10), "0405071317")
        XCTAssertEqual(p.run(max: 100), "9027641920")
        XCTAssertEqual(p.run(max: 1000), "9110846700")
    }
    func testProblem49() throws {
        let p = problem49()
        XCTAssertEqual(p.run(), "296962999629")
    }
    func testProblem50() throws {
        let p = problem50()
        XCTAssertEqual(p.run(max: 100), 41)
        XCTAssertEqual(p.run(max: 1000), 953)
        XCTAssertEqual(p.run(max: 1000000), 997651)
    }
    func testProblem51() throws {
        let p = problem51()
        XCTAssertEqual(p.run(expectedSize: 6, primedigits: 2), 13)
        XCTAssertEqual(p.run(expectedSize: 7, primedigits: 5), 56003)
        //XCTAssertEqual(problem51(expectedSize: 8, primedigits: 6), 121313)
    }
    func testProblem52() throws {
        let p = problem52()
        XCTAssertEqual(p.run(to: 2), 125874)
        XCTAssertEqual(p.run(to: 6), 142857)
    }
    func testProblem53() throws {
        let p = problem53()
        XCTAssertEqual(p.run(maxN: 10, maxResult: 100), 7)
        XCTAssertEqual(p.run(maxN: 100, maxResult: 1000000), 4075)
    }
    func testProblem54() throws {
        let p = problem54()
        XCTAssertEqual(p.run(player1: "5H 5C 6S 7S KD", player2: "2C 3S 8S 8D TD"), false)
        XCTAssertEqual(p.run(player1: "5D 8C 9S JS AC", player2: "2C 5C 7D 8S QH"), true)
        XCTAssertEqual(p.run(player1: "2D 9C AS AH AC", player2: "3D 6D 7D TD QD"), false)
        XCTAssertEqual(p.run(player1: "4D 6S 9H QH QC", player2: "3D 6D 7H QD QS"), true)
        XCTAssertEqual(p.run(player1: "2H 2D 4C 4D 4S", player2: "3C 3D 3S 9S 9D"), true)
        XCTAssertEqual(p.run(), 376)
    }
    func testProblem55() throws {
        let p = problem55()
        XCTAssertEqual(p.isLychrel(47), false)
        XCTAssertEqual(p.isLychrel(349), false)
        XCTAssertEqual(p.isLychrel(196), true)
        XCTAssertEqual(p.isLychrel(4994), true)
        XCTAssertEqual(p.run(), 249)
    }
    func testProblem56() throws {
        let p = problem56()
        XCTAssertEqual(p.run(n: 9), 45)
        XCTAssertEqual(p.run(n: 99), 972)
    }
    func testProblem57() throws {
        let p = problem57()
        XCTAssertEqual(p.run(max: 8), 1)
        XCTAssertEqual(p.run(max: 100), 15)
        XCTAssertEqual(p.run(max: 1000), 153)
    }
    func testProblem58() throws {
        let p = problem58()
        XCTAssertEqual(p.run(maxRatio: 0.5), 11)
        XCTAssertEqual(p.run(maxRatio: 0.1), 26241)
    }
    func testProblem59() throws {
        let p = problem59()
        XCTAssertEqual(p.run(), 129448)
    }
    func testProblem60() throws {
        let p = problem60()
        XCTAssertEqual(p.run(num: 2), 10)
        XCTAssertEqual(p.run(num: 3), 119)
        XCTAssertEqual(p.run(num: 4), 792)
        //XCTAssertEqual(p.run(num: 5), 26033)
    }
    func testProblem61() throws {
        let p = problem61()
        XCTAssertEqual(p.run(), 28684)
    }
    func testProblem62() throws {
        let p = problem62()
        XCTAssertEqual(p.run(n: 3), 41063625)
        XCTAssertEqual(p.run(n: 4), 1006012008)
        XCTAssertEqual(p.run(n: 5), 127035954683)
    }
    func testProblem63() throws {
        let p = problem63()
        XCTAssertEqual(p.run(), 49)
    }
    func testProblem64() throws {
        let p = problem64()
        XCTAssertEqual(p.run(N: 13), 4)
        XCTAssertEqual(p.run(N: 10000), 1322)
    }
    func testProblem65() throws {
        let p = problem65()
        XCTAssertEqual(p.run(k: 10), 17)
        XCTAssertEqual(p.run(k: 100), 272)
    }
    func testProblem66() throws {
        let p = problem66()
        XCTAssertEqual(p.run(maxD: 7), 5)
        XCTAssertEqual(p.run(maxD: 1000), 661)
    }
    func testProblem67() throws {
        let p = problem67()
        XCTAssertEqual(p.run(), 7273)
    }
    func testProblem68() throws {
        let p = problem68()
        XCTAssertEqual(p.run(n: 3), 432621513)
        XCTAssertEqual(p.run(n: 5), 6531031914842725)
    }
    func testProblem69() throws {
        let p = problem69()
        XCTAssertEqual(p.run(max: 10), 6)
        XCTAssertEqual(p.run(max: 1000000), 510510)
    }
    func testProblem70() throws {
        let p = problem70()
        XCTAssertEqual(p.run(maxN: 100), 21)
        XCTAssertEqual(p.run(maxN: 10^^7), 8319823)
    }
    func testProblem71() throws {
        let p = problem71()
        XCTAssertEqual(p.run(maxD: 8), 2)
        XCTAssertEqual(p.run(maxD: 10^^6), 428570)
    }
    func testProblem72() throws {
        let p = problem72()
        XCTAssertEqual(p.run(maxD: 8), 21)
        XCTAssertEqual(p.run(maxD: 10^^6), 303963552391)
    }
    func testProblem73() throws {
        let p = problem73()
        XCTAssertEqual(p.run(maxD: 8), 3)
        //XCTAssertEqual(p.run(maxD: 12000), 7295372)
    }
    func testProblem79() throws {
        let p = problem79()
        XCTAssertEqual(p.run(), 73162890)
    }
    func testProblem89() throws {
        let p = problem89()
        XCTAssertEqual(p.run(), 743)
    }
    func testProblem92() throws {
        let p = problem92()
        XCTAssertEqual(p.run(max: 99), 80)
        XCTAssertEqual(p.run(max: 9999), 8558)
        //XCTAssertEqual(p.run(max: 9999999), 8581146)
    }
    func testProblem97() throws {
        let p = problem97()
        XCTAssertEqual(p.run(), 8739992577)
    }
}
