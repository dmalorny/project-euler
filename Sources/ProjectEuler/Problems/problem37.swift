import BigInt

class problem37 {
    
    func truncate_left(_ n: Int, _ c: Int) -> Int {
        let str = String(n)
        let res = str.right(c)
        
        return Int(res)!
    }

    func truncate_right(_ n: Int, _ c: Int) -> Int {
        let str = String(n)
        let res = str.left(c)
        
        return Int(res)!
    }

    func run(max: Int) -> Int {
        let primes = primes(to: max)
        
        var sum = 0
        for prime in primes {
            let len = String(prime).count
            
            var allprime = true
            if (len == 1) {
                continue
            }
            
            for i in 1 ... len-1 {
                let left = truncate_left(prime, i)
                if (!primes.contains(left)) {
                    allprime = false
                    continue
                }
                let right = truncate_right(prime, i)
                if (!primes.contains(right)) {
                    allprime = false
                    continue
                }
            }
            
            if (allprime) {
                sum += prime
                print(prime)
            }
        }
        
        print("sum = \(sum)")
        return sum
    }
}
