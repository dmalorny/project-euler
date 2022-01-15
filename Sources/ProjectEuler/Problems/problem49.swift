class problem49 {
    
    func run() -> String {
        let four_digit_primes = primes(to: 9999).filter { $0 >= 1000 }
        let count = four_digit_primes.count
        var result = ""
        
        for i in 0 ... count-3 {
            let p1 = four_digit_primes[i]
            let d1 = fromDigits(digits(p1).sorted())

            for j in i+1 ... count-1 {
                let p2 = four_digit_primes[j]
                let d2 = fromDigits(digits(p2).sorted())

                if (d1 != d2) {
                    continue
                }
                
                let diff = p2-p1
                let p3 = p2+diff
                let d3 = fromDigits(digits(p3).sorted())
                
                if (d3 == d2 && four_digit_primes.contains(p3)) {
                    result = String(p1)+String(p2)+String(p3)
                    print(p1,p2,p3)
                }
            }
        }
        
        return result
    }
}
