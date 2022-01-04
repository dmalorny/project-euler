class problem51 {
    init() {}
    
    func replaceCharacters(str: String, positions: [Int], by: Character) -> String {
        var d = Array(str)
        for pos in positions {
            d[pos] = by
        }
        return String(d)
    }

    func positionCombinations(numDigits: Int) -> [[Int]] {
        var result: [[Int]] = [];
        
        let digits = stride(from: 0, to: numDigits-1, by: 1).sorted()
        
        for c in 1 ... numDigits-1 {
            for p in digits.combinations(ofCount: c) {
                result.append(p)
            }
        }
        
        return result
    }

    func findMinimum(prime: Int, positions: [Int]) -> Int {
        for r in 0 ... 9 {
            let s = replaceCharacters(str: String(prime), positions: positions, by: Array(String(r))[0])
            let candidate = Int(s)!
            if (candidate >= prime && candidate.isPrime) {
                return candidate
            }
        }
        
        return 0
    }

    func listResultPrimes(prime: Int, positions: [Int]) {
        for r in 0 ... 9 {
            let s = replaceCharacters(str: String(prime), positions: positions, by: Array(String(r))[0])
            let candidate = Int(s)!
            if (candidate >= prime && candidate.isPrime) {
                print(" -> \(candidate)")
            }
        }
    }

    func run(expectedSize: Int, primedigits: Int) -> Int {
        let minimumPrime = 10^^(primedigits-1)
        let maximumPrime = 10^^primedigits
        let primes = primes(to: maximumPrime).filter({ $0 > minimumPrime })
        
        for positions in positionCombinations(numDigits: primedigits) {
            print(positions)
            for prime in primes {
                var count = 0
                for r in 0 ... 9 {
                    let s = replaceCharacters(str: String(prime), positions: positions, by: Array(String(r))[0])
                    let candidate = Int(s)!
                    if (candidate >= minimumPrime && candidate.isPrime) {
                        count += 1
                    }
                    if (count >= expectedSize) {
                        
                        let minumum = findMinimum(prime: prime, positions: positions)
                        listResultPrimes(prime: prime, positions: positions)
                        return minumum
                    }
                }
            }
        }
        
        return 0
    }
}
