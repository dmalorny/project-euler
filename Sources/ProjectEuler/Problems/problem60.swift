import BigInt

class problem60 {
    init() {}
    
    func test(_ arr: [Int]) -> Bool {
        for c in arr.map({String($0)}).permutations(ofCount: 2) {
            let b = BigUInt(c[0]+c[1])
            if (!(b?.isPrime() ?? true)) {
                return false
            }
        }
        return true
    }
    
    func run(num: Int) -> Int {
        let primes = primes(to: 9000).filter({$0 > 2})
    
        for a in primes {
            for b in primes.filter({$0 > a}) {
                if (!test([a,b])) {
                    continue
                }
                print([a,b])
                if (num == 2) {
                    return array_sum([a,b])
                }
                for c in primes.filter({$0 > b}) {
                    if (!test([a,b,c])) {
                        continue
                    }
                    print([a,b,c])
                    if (num == 3) {
                        return array_sum([a,b,c])
                    }
                    for d in primes.filter({$0 > c}) {
                        if (!test([a,b,c,d])) {
                            continue
                        }
                        print([a,b,c,d])
                        if (num == 4) {
                            return array_sum([a,b,c,d])
                        }
                        for e in primes.filter({$0 > d}) {
                            if (test([a,b,c,d,e])) {
                                print([a,b,c,d,e], array_sum([a,b,c,d,e]))
                                return array_sum([a,b,c,d,e])
                            }
                        }
                    }
                }
            }
        }
        
        return 0
    }
}
