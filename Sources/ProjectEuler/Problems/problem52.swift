class problem52 {
    
    func run(to: Int) -> Int {
        var n = 1
        while (true) {
            var found = true
            for factor in 2 ... to {
                if (!hasSameDigits(n, n*factor)) {
                    found = false
                    break
                }
            }
            if (found) {
                for factor in 2 ... to {
                    print("\(factor) x \(n) = \(factor * n)")
                }
                break
            }
            n += 1
        }
        
        return n
    }
}
