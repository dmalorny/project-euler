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

func square(_ n: Int) -> Int {
    return n*n
}

func pentagonal(_ n: Int) -> Int {
    return n*(3*n - 1)/2
}

func hexagonal(_ n: Int) -> Int {
    return n*(2*n - 1)
}

func heptagonal(_ n: Int) -> Int {
    return n*(5*n - 3)/2
}

func octagonal(_ n: Int) -> Int {
    return n*(3*n - 2)
}

func isTriangle(_ t: Int) -> Bool {
    let d = Double(8*t + 1)
    
    if (d > 0) {
        let candidate = Int((-1.0 + d.squareRoot()) / 2.0)
        return (triangle(candidate) == t)
    }
    
    return false
}

func isSquare(_ s: Int) -> Bool {
    let d = Double(s)
    
    if (d > 0) {
        let candidate = Int(d.squareRoot())
        return (square(candidate) == s)
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

func isHeptagonal(_ h: Int) -> Bool {
    let d = Double(40*h + 9)
    
    if (d > 0) {
        let candidate = Int((3.0 + d.squareRoot()) / 10.0)
        return (heptagonal(candidate) == h)
    }
    
    return false
}

func isOctagonal(_ o: Int) -> Bool {
    let d = Double(3*o + 1)
    
    if (d > 0) {
        let candidate = Int((1.0 + d.squareRoot()) / 3.0)
        return (octagonal(candidate) == o)
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
    if (String(a).count != String(b).count) {
        return false
    }
    return Array(String(a)).sorted() == Array(String(b)).sorted()
}

func digitSum(_ n: BigUInt, complete: Bool = false) -> Int {
    var sum = 0;
    
    for c in Array(String(n)) {
        sum += Int(String(c))!
    }
    
    if (complete && sum > 9) {
        return digitSum(BigUInt(sum), complete: true)
    }
    
    return sum
}

func toRoman(_ n: Int) -> String {
    var str = ""
    var r = n
    
    while (r >= 1000) {
        str += "M"
        r -= 1000
    }
    while (r >= 100) {
        str += "C"
        r -= 100
    }
    while (r >= 10) {
        str += "X"
        r -= 10
    }
    while (r >= 1) {
        str += "I"
        r -= 1
    }
    
    str = str.replacingOccurrences(of: "CCCCCCCCC", with: "CM")
    str = str.replacingOccurrences(of: "CCCCC", with: "D")
    str = str.replacingOccurrences(of: "CCCC", with: "CD")
    
    str = str.replacingOccurrences(of: "XXXXXXXXX", with: "XC")
    str = str.replacingOccurrences(of: "XXXXX", with: "L")
    str = str.replacingOccurrences(of: "XXXX", with: "XL")
    
    str = str.replacingOccurrences(of: "IIIIIIIII", with: "IX")
    str = str.replacingOccurrences(of: "IIIII", with: "V")
    str = str.replacingOccurrences(of: "IIII", with: "IV")
    
    return str
}

func fromRoman(_ s: String) -> Int {
    var str = s
    var r = 0
    
    str = str.replacingOccurrences(of: "IV", with: "IIII")
    str = str.replacingOccurrences(of: "V", with: "IIIII")
    str = str.replacingOccurrences(of: "IX", with: "IIIIIIIII")
    
    str = str.replacingOccurrences(of: "XL", with: "XXXX")
    str = str.replacingOccurrences(of: "L", with: "XXXXX")
    str = str.replacingOccurrences(of: "XC", with: "XXXXXXXXX")
    
    str = str.replacingOccurrences(of: "CD", with: "CCCC")
    str = str.replacingOccurrences(of: "D", with: "CCCCC")
    str = str.replacingOccurrences(of: "CM", with: "CCCCCCCCC")
    
    for c in Array(str) {
        if (c == "M") {
            r += 1000
        }
        if (c == "C") {
            r += 100
        }
        if (c == "X") {
            r += 10
        }
        if (c == "I") {
            r += 1
        }
    }
    
    return r
}
