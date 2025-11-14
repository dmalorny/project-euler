import Foundation
import BigInt

/// calculates the power of integers
///  i.e.  2^^8 = 256
precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

extension Int {
    /// true if number is even
    var isEven: Bool {
        return self % 2 == 0
    }
    
    /// true if number is odd
    var isOdd: Bool {
        return self % 2 != 0
    }
    
    /// true if number is a prime number
    var isPrime: Bool {
        guard self >= 2     else { return false }
        guard self != 2     else { return true  }
        guard self % 2 != 0 else { return false }
        return !stride(from: 3, through: Int(sqrt(Double(self))), by: 2).contains { self % $0 == 0 }
    }
    
    /// returns the square of the number
    var squared: Int {
        return self*self
    }
}

/// Calculates the factorial n! of a given integer
/// - Parameters:
///     - n: an integer
/// - Returns: the factorial n! of the given integer
///
func factorial(_ n: Int) -> Int {
    if (n <= 1) {
        return 1
    }
    return (1 ... n).map { $0 }.reduce(Int(1), *)
}
func factorialBigInt(_ n: BigUInt) -> BigUInt {
    if (n <= 1) {
        return 1
    }
    return (1 ... n).map { $0 }.reduce(BigUInt(1), *)
}

/// returns a list of all divisors (incl. 1 and the number itself)
/// - Parameters:
///     - n: an integer, i.e. 6
/// - Returns: the divisors of the given integer. i.e. [1, 2, 3, 6]
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
/// - Parameters:
///     - n: an integer, i.e. 13195
/// - Returns: the prime factors of the given integer. i.e. [5, 7, 13, 29]
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

/// generates a list of prime to a given maxiumum
/// - Parameters:
///     - n: an integer, i.e. 13
/// - Returns: all prime factors of the given integer, i.e. [2, 3, 5, 7, 11, 13]
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

/// returns the nth fibinacci number
/// - Parameters:
///     - n: an integer, i.e. 10
/// - Returns: the nth fibinacci number, i.e. 55
func fibonacci(_ n: Int) -> Int {
    if (n<3) {
        return 1
    }
    return fibonacci(n-1) + fibonacci(n-2)
}

/// returns the nth triangle number Tn = n(n + 1)/2
/// - Parameters:
///     - n: an integer, i.e. 5
/// - Returns: the nth triangle number, i.e. 15
func triangle(_ n: Int) -> Int {
    return n*(n + 1)/2
}

/// returns the square number Sn = n*n
/// - Parameters:
///     - n: an integer, i.e. 5
/// - Returns: the nth square number, i.e. 25
func square(_ n: Int) -> Int {
    return n*n
}

/// returns the nth pentagonal number Pn = n(3n - 1)/2
/// - Parameters:
///     - n: an integer, i.e. 5
/// - Returns: the nth pentagonal number, i.e. 35
func pentagonal(_ n: Int) -> Int {
    return n*(3*n - 1)/2
}

/// returns the nth hexagonal number Hn = n(2n - 1)
/// - Parameters:
///     - n: an integer, i.e. 5
/// - Returns: the nth hexagonal number, i.e. 45
func hexagonal(_ n: Int) -> Int {
    return n*(2*n - 1)
}

/// returns the nth heptagonal number Hn = n(5n - 3)/2
/// - Parameters:
///     - n: an integer, i.e. 5
/// - Returns: the nth heptagonal number, i.e. 55
func heptagonal(_ n: Int) -> Int {
    return n*(5*n - 3)/2
}

/// returns the nth octagonal number On = n(3n - 2)
/// - Parameters:
///     - n: an integer, i.e. 5
/// - Returns: the nth octagonal number, i.e. 65
func octagonal(_ n: Int) -> Int {
    return n*(3*n - 2)
}

/// check if number is a triangle number
/// - Parameters:
///     - n: an integer,
/// - Returns: true if the number is a triangle number
func isTriangle(_ t: Int) -> Bool {
    let d = Double(8*t + 1)
    
    if (d > 0) {
        let candidate = Int((-1.0 + d.squareRoot()) / 2.0)
        return (triangle(candidate) == t)
    }
    
    return false
}

/// check if number is a square number
/// - Parameters:
///     - n: an integer,
/// - Returns: true if the number is a square number
func isSquare(_ s: Int) -> Bool {
    if (s < 0) {
        return false
    }
    
    let candidate = Int(Double(s).squareRoot())
    return (square(candidate) == s)
}

/// check if number is a pentagonal number
/// - Parameters:
///     - n: an integer,
/// - Returns: true if the number is a pentagonal number
func isPentagonal(_ p: Int) -> Bool {
    let d = Double(24*p + 1)
    
    if (d > 0) {
        let candidate = Int((1.0 + d.squareRoot()) / 6.0)
        return (pentagonal(candidate) == p)
    }
    
    return false
}

/// check if number is a hexagonal number
/// - Parameters:
///     - n: an integer,
/// - Returns: true if the number is a hexagonal number
func isHexagonal(_ h: Int) -> Bool {
    let d = Double(8*h + 1)
    
    if (d > 0) {
        let candidate = Int((1.0 + d.squareRoot()) / 4.0)
        return (hexagonal(candidate) == h)
    }
    
    return false
}

/// check if number is a heptagonal number
/// - Parameters:
///     - n: an integer,
/// - Returns: true if the number is a heptagonal number
func isHeptagonal(_ h: Int) -> Bool {
    let d = Double(40*h + 9)
    
    if (d > 0) {
        let candidate = Int((3.0 + d.squareRoot()) / 10.0)
        return (heptagonal(candidate) == h)
    }
    
    return false
}

/// check if number is a octagonal number
/// - Parameters:
///     - n: an integer,
/// - Returns: true if the number is a octagonal number
func isOctagonal(_ o: Int) -> Bool {
    let d = Double(3*o + 1)
    
    if (d > 0) {
        let candidate = Int((1.0 + d.squareRoot()) / 3.0)
        return (octagonal(candidate) == o)
    }
    
    return false
}

/// calculates binom n over k
/// - Parameters:
///     - n: an integer,
///     - k: an integer,
/// - Returns: the binom (n over k)
func binom(_ n: Int, _ k: Int) -> Int? {
    guard k <= n else { return nil }
    return factorial(n) / (factorial(k) * factorial(n-k))
}
func binomBigInt(_ n: Int, _ k: Int) -> BigUInt? {
    guard k <= n else { return nil }
    return factorialBigInt(BigUInt(n)) / (factorialBigInt(BigUInt(k)) * factorialBigInt(BigUInt(n-k)))
}

/// calculates greatest common divisor
/// - Parameters:
///     - a: an integer,
///     - b: an integer,
/// - Returns: the gcd of a and b
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

/// calculates least common multiplier
/// - Parameters:
///     - a: an integer,
///     - b: an integer,
/// - Returns: the lcm of a and b
func lcm(_ a: Int, _ b: Int) -> Int {
    return a*b/gcd(a,b)
}

/// reduces a fraction
/// - Parameters:
///     - n: an integer, the nominator of the fraction
///     - d: an integer, the denominator of the fraction
/// - Returns: a reduced fraction, i.e. reduceFraction(4,6) = (2,3)
func reduceFraction(_ n: Int, _ d: Int) -> (Int,Int) {
    let gcd = gcd(n,d)
    return (n / gcd, d / gcd)
}

/// Euler's totient function, sometimes called the phi function
/// - Parameters:
///     - n: an integer
/// - Returns: ɸ(n)
func phi(_ n: Int) -> Int {
    var prod = n
    for d in primeFactors(n) {
        prod = Int(Double(prod) * (1.0 - 1.0/Double(d)))
    }
    return prod
}

/// check if two numbers have the same digits
/// - Parameters:
///     - a: an integer
///     - b: an integer
/// - Returns: true, if both numbers have the same digits
func hasSameDigits(_ a: Int, _ b: Int) -> Bool {
    if (String(a).count != String(b).count) {
        return false
    }
    return Array(String(a)).sorted() == Array(String(b)).sorted()
}

/// calculates the sum of all digits of a number
/// - Parameters:
///     - n: an integer
///     - complete: if true, the function repeates until the result is a single digit
/// - Returns: true, the sum of all digits of a number
/// Examples:
///   digitSum(1457) = 17
///   digitSum(1457, complete: true) = 8
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

/// converts numer to roman format
/// - Parameters:
///     - n: an integer, i.e 9
/// - Returns: the roman numer of n, i.e. IX
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

/// converts roman numer to integer format
/// - Parameters:
///     - s: an roman number, i.e IX
/// - Returns: the integer representaion of s, i.e. 9
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
