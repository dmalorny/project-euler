class problem53 {
    
    func run(maxN: Int, maxResult: Int) -> Int {
        var count = 0
        for n in 1 ... maxN {
            for k in 1 ... n {
                let b = binom(n,k)!
                if (b > maxResult) {
                    count += 1
                    //print("(\(n), \(k)) = \(b)")
                }
            }
        }
        return count
    }
}
