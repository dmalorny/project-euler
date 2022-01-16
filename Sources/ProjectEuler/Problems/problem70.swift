class problem70 {
    
    func run(maxN: Int) -> Int {
        var bestN = 1;
        var bestPhi = 1;
        var bestRatio = 999.9;
         
        let primes = primes(to: 5000)
         
        for i in 0 ... primes.count-2 {
            for j in i+1 ... primes.count-1 {
                let n = primes[i] * primes[j]
                if (n > maxN) {
                    break;
                }
         
                let phi = (primes[i] - 1) * (primes[j] - 1);
                let ratio = Double(n) / Double(phi);
         
                if (hasSameDigits(n,phi) && ratio < bestRatio) {
                    (bestN, bestPhi, bestRatio) = (n, phi, ratio)
                }
            }
        }
        print(bestN, bestPhi, bestRatio)
        
        return bestN
    }
    
}
