import BigInt

class problem35 {
    
    func rotate(_ n: Int, _ c: Int) -> Int {
        let str = String(n)
        let res = str.right(str.count-c)+str.left(c)
        
        return Int(res)!
    }

    func run(max: Int) -> Int {
        let primes = primes(to: max)
        var primeset = Set(primes)
        
        var count = 0
        for prime in primes {
            
            let len = String(prime).count
            
            var allprime = true
            if (len > 1) {
                for i in 1 ... len-1 {
                    let candidate = rotate(prime, i)
                    if (!primeset.contains(candidate)) {
                        primeset.remove(candidate)
                        allprime = false
                    }
                    if (!allprime) {
                        primeset.remove(candidate)
                    }
                }
            }
            
            if (allprime) {
                count += 1
                print(prime)
            } else {
                primeset.remove(prime)
            }
        }
        
        print("\(count) circular primes")
        return count
    }
}
