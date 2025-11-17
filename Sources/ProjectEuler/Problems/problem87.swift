import Foundation

class problem87 {
    
    func run(max: Int) -> Int {
        
        var solutions: Set<Int> = []
        
        let max2 = Int(pow(Double(max), 1/2))
        let max3 = Int(pow(Double(max), 1/3))
        let max4 = Int(pow(Double(max), 1/4))
        
        for c in primes(to: max4) {
            for b in primes(to: max3) {
                for a in primes(to: max2) {
                    let r = a^^2 + b^^3 + c^^4
                    if (r < max) {
                        //print("\(r) = \(a)^2 + \(b)^3 + \(c)^4")
                        solutions.insert(r)
                        continue
                    }
                    break
                }
            }
        }
       
        return solutions.count
    }
}
