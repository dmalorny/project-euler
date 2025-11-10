import Foundation
import BigInt

class problem76 {
    
    var memo: [Int: BigInt] = [0: 1]

    func p(_ n: Int) -> BigInt {
        if n < 0 { return 0 }
        if let value = memo[n] { return value }
        
        var total: BigInt = 0
        var k = 1
        while true {
            let pent1 = k * (3 * k - 1) / 2
            let pent2 = k * (3 * k + 1) / 2
            if pent1 > n { break }
            
            total += ((k % 2 == 1) ? 1 : -1) * p(n - pent1)
            if pent2 <= n {
                total += ((k % 2 == 1) ? 1 : -1) * p(n - pent2)
            }
            k += 1
        }
        
        memo[n] = total
        return total
    }

    func run(d: Int) -> BigInt {
        
        return p(d) - 1
    }
}
