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
    
    func testPentagonal() throws {
        XCTAssertEqual(pentagonal(1), 1)
        XCTAssertEqual(pentagonal(2), 5)
        XCTAssertEqual(pentagonal(8), 92)
        XCTAssertEqual(pentagonal(10), 145)
    }
    
    func testHexagonal() throws {
        XCTAssertEqual(hexagonal(1), 1)
        XCTAssertEqual(hexagonal(2), 6)
        XCTAssertEqual(hexagonal(3), 15)
        XCTAssertEqual(hexagonal(5), 45)
    }
    
    func testIsTriangle() throws {
        XCTAssertEqual(isTriangle(1), true)
        XCTAssertEqual(isTriangle(3), true)
        XCTAssertEqual(isTriangle(6), true)
        XCTAssertEqual(isTriangle(15), true)
        XCTAssertEqual(isTriangle(12), false)
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
}
