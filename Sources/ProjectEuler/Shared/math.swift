import Foundation
import BigInt

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 != 0
    }
    
    var isPrime: Bool {
        guard self >= 2     else { return false }
        guard self != 2     else { return true  }
        guard self % 2 != 0 else { return false }
        return !stride(from: 3, through: Int(sqrt(Double(self))), by: 2).contains { self % $0 == 0 }
    }
    
    var squared: Int {
        return self*self
    }
}

/// Calculates the factorial n! of a given integer
/// - Parameters:
///     - n: an integer to calculate the factoriel
/// - Returns: the factorial n! of a given integer
func factorial(_ n: Int) -> BigUInt {
    if (n <= 1) {
        return 1
    }
    return (1 ... n).map { BigUInt($0) }.reduce(BigUInt(1), *)
}

/// returns a list of all divisors (incl. 1 and the number itself)
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

/// calculates all prime factors of the given integer
func primeFactors(_ n: Int) -> [Int] {
    var factor = 2
    var rest = n
    var result: Array<Int> = []
    
    while (factor<=rest) {
        if (rest % factor == 0) {
            result.append(factor)
            while (rest % factor == 0) {
                rest /= factor
            }
        }
        factor += 1
    }
    
    return result
}

func primes(to n: Int) -> [Int] {
    if n <= 5 {
        return [2, 3, 5].filter { $0 <= n }
    }

    var arr = Array(stride(from: 3, through: n, by: 2))

    let squareRootN = Int(Double(n).squareRoot())
    for index in 0... {
        if arr[index] > squareRootN { break }
        let num = arr.remove(at: index)
        arr = arr.filter { $0 % num != 0 }
        arr.insert(num, at: index)
    }

    arr.insert(2, at: 0)
    return arr
}

func fibonacci(_ n: Int) -> Int {
    if (n<3) {
        return 1
    }
    return fibonacci(n-1) + fibonacci(n-2)
}

func triangle(_ n: Int) -> Int {
    return n*(n + 1)/2
}

func pentagonal(_ n: Int) -> Int {
    return n*(3*n - 1)/2
}

func hexagonal(_ n: Int) -> Int {
    return n*(2*n - 1)
}

func isTriangle(_ t: Int) -> Bool {
    let d = Double(8*t + 1)
    
    if (d > 0) {
        let candidate = Int((-1.0 + d.squareRoot()) / 2.0)
        return (triangle(candidate) == t)
    }
    
    return false
}

func isPentagonal(_ p: Int) -> Bool {
    let d = Double(24*p + 1)
    
    if (d > 0) {
        let candidate = Int((1.0 + d.squareRoot()) / 6.0)
        return (pentagonal(candidate) == p)
    }
    
    return false
}

func isHexagonal(_ h: Int) -> Bool {
    let d = Double(8*h + 1)
    
    if (d > 0) {
        let candidate = Int((1.0 + d.squareRoot()) / 4.0)
        return (hexagonal(candidate) == h)
    }
    
    return false
}

func binom(_ n: Int, _ r: Int) -> BigUInt? {
    guard r <= n else { return nil }
    return factorial(n) / (factorial(r) * factorial(n-r))
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if (a == b) {
        return a
    }
    if (a < b) {
        return gcd(b,a)
    }
    var (z,n,r) = (a,b,1)
    while (r != 0) {
        r = z % n
        (z,n) = (n,r)
    }
    
    return z
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a*b/gcd(a,b)
}

func phi(_ n: Int) -> Int {
    var prod = n
    for d in primeFactors(n) {
        prod = Int(Double(prod) * (1.0 - 1.0/Double(d)))
    }
    return prod
}

func hasSameDigits(_ a: Int, _ b: Int) -> Bool {
    return Array(String(a)).sorted() == Array(String(b)).sorted()
}
