import Foundation
import BigInt

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

// Integer functions
func even(_ x: Int) -> Bool {
    return x % 2 == 0
}

func square(_ x: Int) -> Int {
    return x*x
}

func factorial(_ n: Int) -> BigInt {
    if (n <= 1) {
        return 1
    }
    return (1 ... n).map { BigInt($0) }.reduce(BigInt(1), *)
}

func divisors(_ n: Int) -> [Int] {
    var divisors = [Int]()
    for i in 1 ... Int(Double(n).squareRoot()) {
        if (n % i == 0) {
            if (n / i == i) {
                divisors.append(i)
            } else {
                divisors.append(i)
                divisors.append(n/i)
            }
        }
    }
    divisors.sort()
    return divisors;
}
