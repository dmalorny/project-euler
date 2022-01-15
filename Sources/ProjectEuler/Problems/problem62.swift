import BigInt

class problem62 {
    
    func digitClass(_ a: Int) -> String {
        return String(Array(String(BigUInt(a).power(3))).sorted())
    }
    
    func run(n: Int) -> BigUInt {
        var a = 1
        var dict: [String:(min: Int,count: Int)] = [:]
        
        while(true) {
            a += 1

            let str = digitClass(a)
            
            if (dict[str] == nil) {
                dict[str] = (min: a, count: 1)
            } else {
                var c = dict[str]!
                c.count = c.count+1
                if (c.count >= n) {
                    return BigUInt(c.min).power(3)
                }
                dict[str] = c
            }
        }
    }
}
