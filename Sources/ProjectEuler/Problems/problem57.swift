import BigInt

class problem57 {
    
    func run(max: Int) -> Int {
        var i = 1
        var n: BigUInt = 3
        var d: BigUInt = 2
        var count = 0
        
        while (i < max) {
            (i, n, d) = (i+1, n+2*d, n+d)
            //print("\(i): \(n)/\(d)")
            if (String(n).count > String(d).count) {
                count += 1
            }
        }
        return count
    }
}
