import XCTest
@testable import ProjectEuler

final class mathTests: XCTestCase {
    func testPower() throws {
        XCTAssertEqual(5^^2, 25)
        XCTAssertEqual(2^^8, 256)
        XCTAssertEqual(7^^7, 823543)
    }
    
    func testEvenOdd() throws {
        XCTAssertEqual(6.isEven, true)
        XCTAssertEqual(6.isOdd, false)
        XCTAssertEqual(0.isEven, true)
        XCTAssertEqual(0.isOdd, false)
        XCTAssertEqual(123.isEven, false)
        XCTAssertEqual(123.isOdd, true)
    }
    
    func testIsPrime() throws {
        XCTAssertEqual(1.isPrime, false)
        XCTAssertEqual(2.isPrime, true)
        XCTAssertEqual(3.isPrime, true)
        XCTAssertEqual(4.isPrime, false)
        XCTAssertEqual(12.isPrime, false)
        XCTAssertEqual(13.isPrime, true)
    }
    
    func testSquared() throws {
        XCTAssertEqual(2.squared, 4)
        XCTAssertEqual(7.squared, 49)
        XCTAssertEqual(10.squared, 100)
        XCTAssertEqual(12.squared, 144)
    }
    
    func testFactorial() throws {
        XCTAssertEqual(factorial(1), 1)
        XCTAssertEqual(factorial(2), 2)
        XCTAssertEqual(factorial(3), 6)
        XCTAssertEqual(factorial(5), 120)
        XCTAssertEqual(factorial(10), 3628800)
        XCTAssertEqual(factorial(20), 2432902008176640000)
    }
    
    func testDivisors() throws {
        XCTAssertEqual(divisors(3), [1, 3])
        XCTAssertEqual(divisors(6), [1, 2, 3, 6])
        XCTAssertEqual(divisors(220), [1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110, 220])
        XCTAssertEqual(divisors(284), [1, 2, 4, 71, 142, 284])
    }
    
    func testPrimeFactors() throws {
        XCTAssertEqual(primeFactors(3), [3])
        XCTAssertEqual(primeFactors(6), [2, 3])
        XCTAssertEqual(primeFactors(8), [2])
        XCTAssertEqual(primeFactors(13195), [5, 7, 13, 29])
        XCTAssertEqual(primeFactors(600851475143), [71, 839, 1471, 6857])
    }
    
    func testPrimes() throws {
        XCTAssertEqual(primes(to: 3), [2, 3])
        XCTAssertEqual(primes(to: 13), [2, 3, 5, 7, 11, 13])
        XCTAssertEqual(primes(to: 30), [2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    }
    
    func testFibonacci() throws {
        XCTAssertEqual(fibonacci(1), 1)
        XCTAssertEqual(fibonacci(2), 1)
        XCTAssertEqual(fibonacci(10), 55)
        XCTAssertEqual(fibonacci(12), 144)
    }
    
    func testTriangle() throws {
        XCTAssertEqual(triangle(1), 1)
        XCTAssertEqual(triangle(2), 3)
        XCTAssertEqual(triangle(3), 6)
        XCTAssertEqual(triangle(5), 15)
    }
    
    func testSquare() throws {
        XCTAssertEqual(square(1), 1)
        XCTAssertEqual(square(2), 4)
        XCTAssertEqual(square(3), 9)
        XCTAssertEqual(square(5), 25)
    }
    
    func testPentagonal() throws {
        XCTAssertEqual(pentagonal(1), 1)
        XCTAssertEqual(pentagonal(2), 5)
        XCTAssertEqual(pentagonal(8), 92)
        XCTAssertEqual(pentagonal(10), 145)
    }
    
    func testHeptagonal() throws {
        XCTAssertEqual(heptagonal(1), 1)
        XCTAssertEqual(heptagonal(2), 7)
        XCTAssertEqual(heptagonal(3), 18)
        XCTAssertEqual(heptagonal(5), 55)
    }
    
    func testOctagonal() throws {
        XCTAssertEqual(octagonal(1), 1)
        XCTAssertEqual(octagonal(2), 8)
        XCTAssertEqual(octagonal(3), 21)
        XCTAssertEqual(octagonal(5), 65)
    }
    
    func testIsTriangle() throws {
        XCTAssertEqual(isTriangle(1), true)
        XCTAssertEqual(isTriangle(3), true)
        XCTAssertEqual(isTriangle(6), true)
        XCTAssertEqual(isTriangle(15), true)
        XCTAssertEqual(isTriangle(12), false)
    }
    
    func testIsSquare() throws {
        XCTAssertEqual(isSquare(1), true)
        XCTAssertEqual(isSquare(4), true)
        XCTAssertEqual(isSquare(9), true)
        XCTAssertEqual(isSquare(25), true)
        XCTAssertEqual(isSquare(26), false)
    }
    
    func testIsPentagonal() throws {
        XCTAssertEqual(isPentagonal(1), true)
        XCTAssertEqual(isPentagonal(5), true)
        XCTAssertEqual(isPentagonal(92), true)
        XCTAssertEqual(isPentagonal(145), true)
        XCTAssertEqual(isPentagonal(48), false)
    }
    
    func testIsHexagonal() throws {
        XCTAssertEqual(isHexagonal(1), true)
        XCTAssertEqual(isHexagonal(6), true)
        XCTAssertEqual(isHexagonal(15), true)
        XCTAssertEqual(isHexagonal(45), true)
        XCTAssertEqual(isHexagonal(48), false)
    }
    
    func testIsHeptagonal() throws {
        XCTAssertEqual(isHeptagonal(1), true)
        XCTAssertEqual(isHeptagonal(7), true)
        XCTAssertEqual(isHeptagonal(18), true)
        XCTAssertEqual(isHeptagonal(55), true)
        XCTAssertEqual(isHeptagonal(48), false)
    }
    
    func testIsOctagonal() throws {
        XCTAssertEqual(isOctagonal(1), true)
        XCTAssertEqual(isOctagonal(8), true)
        XCTAssertEqual(isOctagonal(21), true)
        XCTAssertEqual(isOctagonal(65), true)
        XCTAssertEqual(isOctagonal(48), false)
    }
    
    func testBinom() throws {
        XCTAssertEqual(binom(5,5), 1)
        XCTAssertEqual(binom(5,3), 10)
        XCTAssertEqual(binom(23, 10), 1144066)
        XCTAssertEqual(binom(5,6), nil)
    }
    
    func testGcd() throws {
        XCTAssertEqual(gcd(13,7), 1)
        XCTAssertEqual(gcd(391,544), 17)
    }
    
    func testLcm() throws {
        XCTAssertEqual(lcm(13,7), 91)
        XCTAssertEqual(lcm(391,544), 12512)
    }
    
    func testReduceFraction() throws {
        XCTAssertTrue(reduceFraction(1,2) == (1,2))
        XCTAssertTrue(reduceFraction(4,6) == (2,3))
        XCTAssertTrue(reduceFraction(5988,12000) == (499,1000))
    }
    
    func testPhi() throws {
        XCTAssertEqual(phi(2), 1)
        XCTAssertEqual(phi(3), 2)
        XCTAssertEqual(phi(4), 2)
        XCTAssertEqual(phi(5), 4)
        XCTAssertEqual(phi(6), 2)
        XCTAssertEqual(phi(7), 6)
        XCTAssertEqual(phi(8), 4)
        XCTAssertEqual(phi(9), 6)
        XCTAssertEqual(phi(10), 4)
        XCTAssertEqual(phi(900), 240)
        XCTAssertEqual(phi(87109), 79180)
    }
    
    func testHasSameDigits() throws {
        XCTAssertEqual(hasSameDigits(12345, 53241), true)
        XCTAssertEqual(hasSameDigits(97531, 15379), true)
        XCTAssertEqual(hasSameDigits(97531, 16379), false)
        XCTAssertEqual(hasSameDigits(97531, 153790), false)
    }
    
    func testDigitSum() throws {
        XCTAssertEqual(digitSum(1), 1)
        XCTAssertEqual(digitSum(123), 6)
        XCTAssertEqual(digitSum(1457), 17)
        XCTAssertEqual(digitSum(1457, complete: true), 8)
        XCTAssertEqual(digitSum(99999999999), 99)
        XCTAssertEqual(digitSum(99999999999, complete: true), 9)
    }
    
    func testToRoman() throws {
        XCTAssertEqual(toRoman(1), "I")
        XCTAssertEqual(toRoman(2), "II")
        XCTAssertEqual(toRoman(3), "III")
        XCTAssertEqual(toRoman(4), "IV")
        XCTAssertEqual(toRoman(5), "V")
        XCTAssertEqual(toRoman(6), "VI")
        XCTAssertEqual(toRoman(7), "VII")
        XCTAssertEqual(toRoman(8), "VIII")
        XCTAssertEqual(toRoman(9), "IX")
        XCTAssertEqual(toRoman(10), "X")
        XCTAssertEqual(toRoman(11), "XI")
        XCTAssertEqual(toRoman(12), "XII")
        XCTAssertEqual(toRoman(16), "XVI")
        XCTAssertEqual(toRoman(40), "XL")
        XCTAssertEqual(toRoman(49), "XLIX")
        XCTAssertEqual(toRoman(50), "L")
        XCTAssertEqual(toRoman(90), "XC")
        XCTAssertEqual(toRoman(100), "C")
        XCTAssertEqual(toRoman(400), "CD")
        XCTAssertEqual(toRoman(444), "CDXLIV")
        XCTAssertEqual(toRoman(500), "D")
        XCTAssertEqual(toRoman(555), "DLV")
        XCTAssertEqual(toRoman(900), "CM")
        XCTAssertEqual(toRoman(999), "CMXCIX")
        XCTAssertEqual(toRoman(1000), "M")
        XCTAssertEqual(toRoman(1606), "MDCVI")
        XCTAssertEqual(toRoman(5000), "MMMMM")
    }
    
    func testFromRoman() throws {
        XCTAssertEqual(fromRoman("I"), 1)
        XCTAssertEqual(fromRoman("II"), 2)
        XCTAssertEqual(fromRoman("III"), 3)
        XCTAssertEqual(fromRoman("IV"), 4)
        XCTAssertEqual(fromRoman("V"), 5)
        XCTAssertEqual(fromRoman("VI"), 6)
        XCTAssertEqual(fromRoman("VII"), 7)
        XCTAssertEqual(fromRoman("VIII"), 8)
        XCTAssertEqual(fromRoman("IX"), 9)
        XCTAssertEqual(fromRoman("X"), 10)
        XCTAssertEqual(fromRoman("XI"), 11)
        XCTAssertEqual(fromRoman("XII"), 12)
        XCTAssertEqual(fromRoman("XVI"), 16)
        XCTAssertEqual(fromRoman("VVVI"), 16)
        XCTAssertEqual(fromRoman("XIIIIII"), 16)
        XCTAssertEqual(fromRoman("VVIIIIII"), 16)
        XCTAssertEqual(fromRoman("VIIIIIIIIIII"), 16)
        XCTAssertEqual(fromRoman("IIIIIIIIIIIIIIII"), 16)
        XCTAssertEqual(fromRoman("XL"), 40)
        XCTAssertEqual(fromRoman("XLIX"), 49)
        XCTAssertEqual(fromRoman("L"), 50)
        XCTAssertEqual(fromRoman("XC"), 90)
        XCTAssertEqual(fromRoman("C"), 100)
        XCTAssertEqual(fromRoman("CD"), 400)
        XCTAssertEqual(fromRoman("CDXLIV"), 444)
        XCTAssertEqual(fromRoman("D"), 500)
        XCTAssertEqual(fromRoman("DLV"), 555)
        XCTAssertEqual(fromRoman("CM"), 900)
        XCTAssertEqual(fromRoman("CMXCIX"), 999)
        XCTAssertEqual(fromRoman("M"), 1000)
        XCTAssertEqual(fromRoman("MDCVI"), 1606)
        XCTAssertEqual(fromRoman("MCCCCCCVI"), 1606)
        XCTAssertEqual(fromRoman("MMMMM"), 5000)
    }
}
