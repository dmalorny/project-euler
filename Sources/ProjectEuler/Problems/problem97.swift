import BigInt

class problem97 {
    
    func run() -> Int {
        
        let p = 28433 * BigUInt(2).power(7830457, modulus: 10000000000) + 1
        
        return Int(String(p).right(10))!
    }
}
