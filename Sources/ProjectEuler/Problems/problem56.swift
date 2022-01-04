import BigInt

class problem56 {
    init() {}
    
    func digitSum(_ n: BigUInt) -> Int {
        let str = String(n)
        var sum = 0
        for c in Array(str) {
            sum += Int(String(c))!
        }
        return sum
    }
    
    func run(n: Int) -> Int {
        var max = 0
        
        for a in 1 ... n {
            for b in 1 ... n {
                let p = BigUInt(a).power(b)
                let s = digitSum(p)
                if (s>max) {
                    max = s
                }
            }
        }
        
        return max
    }
}
