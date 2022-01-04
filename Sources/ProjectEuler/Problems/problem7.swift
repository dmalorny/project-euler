class problem7 {
    init() {}

    func is_dividable(n: Int, primes: [Int]) -> Bool {
        for p in primes {
           if (n % p == 0) {
                return true
           }
        }
        return false
    }

    func run(n: Int) -> Int {
        var primes:[Int] = []
        var x = 2
        var i = 0
        
        while (i < n) {
            if (is_dividable(n: x, primes: primes)) {
                x += 1
                continue
            } else {
                //print (x)
                primes.append(x)
                i += 1
            }
        }
        
        print("\(i). prime = \(x)")
        return x
    }
}
