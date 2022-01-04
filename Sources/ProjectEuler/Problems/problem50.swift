class problem50 {
    init() {}
    
    func run(max: Int) -> Int {
        let primes = primes(to: max)
        let count = primes.count
        print("\(count) primes")
        
        var totalMaxSum = 0
        var totalMaxLength = 0
        
        for i in 0 ... count-1 {
            var maxSum = 0
            var maxLength = 0
            var sum = primes[i]

            var j = i
            var length = 1
            while (j < count-1 && sum < max) {
                j += 1
                length += 1
                sum += primes[j]
                if (sum>max) {
                    break
                }
                
                if (sum.isPrime && sum > maxSum) {
                    maxSum = sum
                    maxLength = length
                }
                
            }
            
            if (maxLength > totalMaxLength) {
                print("maxSum: \(maxSum), maxLength = \(maxLength)")
                totalMaxLength = maxLength
                totalMaxSum = maxSum
            }
            
        }
        
        print("totalMaxSum: \(totalMaxSum), totalMaxLength = \(totalMaxLength)")
        
        return totalMaxSum
    }
}
