import XCTest
@testable import euler

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
}
