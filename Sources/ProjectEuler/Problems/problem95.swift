class problem95 {
    
    var cache: [Int:Int] = [:]
    var longest_chain: [Int] = []
    var longest_chain_length: Int = 0
    
    func divisor_sum(_ n: Int) -> Int {
        if (cache[n] != nil) {
            return cache[n]!
        }
        
        var sum = 0
        for i in 1 ... Int(Double(n).squareRoot()) {
            if (n % i == 0) {
                if (n / i == i) {
                    sum += i
                } else {
                    sum += i
                    sum += n/i
                }
            }
        }
        let result = sum - n
        cache[n] = result
        return result
    }
   
    func run(max: Int) -> Int {
        for n in 5 ... max {

            var chain: [Int] = []
            var s = n
            while (s > 1 && !chain.contains(s)) {
                chain.append(s)
                s = divisor_sum(s)
                if (s > max) {
                    break
                }
                if (s == chain[0]) {
                    let chain_length = chain.count
                    
                    print("\(n): chain length \(chain_length)")
                    if (chain_length > longest_chain_length) {
                        longest_chain_length = chain_length
                        longest_chain = chain
                    }
                }
            }
        }
        
        print("longest_chain (\(longest_chain_length)): \(longest_chain)")
        
        return longest_chain.sorted()[0]
    }
}
