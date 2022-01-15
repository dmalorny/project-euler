import BigInt

class problem20 {
    
    func fact(_ n: BigInt) -> BigInt {
        if (n == 1) {
            return 1
        }
        
        return n * fact(n-1)
    }

    func digitsum(_ n: BigInt) -> Int {
        let str = String(n)
        var sum = 0
        for c in Array(str) {
            sum += Int(String(c))!
        }
        return sum
    }


    func run(_ n: Int) -> Int {
        let f = fact(BigInt(n))
        let q = digitsum(f)
        print(f)
        print(q)
        return q
    }
}
