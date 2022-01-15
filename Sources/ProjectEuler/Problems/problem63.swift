import BigInt
class problem63 {
    
    func digits(_ x: BigUInt) -> Int {
        return String(x).count
    }
    
    func run() -> Int {
        var count = 0
        for b in 1 ... 100 {
            for n in 1 ... 100 {
                let x = BigUInt(b).power(n)
                if (digits(x) == n) {
                    count += 1
                    //print("\(b)^\(n) = \(x)")
                }
                if (digits(x) > n) {
                    break
                }
            }
        }
        return count
    }
    
}
