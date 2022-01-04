import BigInt

class problem34 {
    init() {}
    
    func run() -> Int {
        var sum = 0
        for n in 3 ... 100000 {
            let digits = digits(n)
            
            var factsum: BigUInt = 0
            for d in digits {
                factsum += factorial(d)
                if(factsum > n) {
                    break
                }
            }
            
            if (n == factsum) {
                print(n)
                sum += n
            }
        }
        
        print("sum = \(sum)")
        return sum
    }
}
