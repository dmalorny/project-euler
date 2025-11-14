import BigInt

class problem53 {
    
    func factorial(_ n: Int) -> BigUInt {
        if (n <= 1) {
            return 1
        }
        return (1 ... n).map { BigUInt($0) }.reduce(BigUInt(1), *)
    }
    
    func binom(_ n: Int, _ k: Int) -> BigUInt? {
        guard k <= n else { return nil }
        return factorial(n) / (factorial(k) * factorial(n-k))
    }
    
    func run(maxN: Int, maxResult: Int) -> Int {
        var count = 0
        for n in 1 ... maxN {
            for k in 1 ... n {
                let b = binom(n,k)!
                if (b > maxResult) {
                    count += 1
                    //print("(\(n), \(k)) = \(b)")
                }
            }
        }
        return count
    }
}
