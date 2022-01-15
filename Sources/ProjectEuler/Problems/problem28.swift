class problem28 {
    
    func run(_ max: Int) -> Int {
        var (sum, n, step) = (1, 1, 2)
        
        while (n < max*max) {
            for _ in 1 ... 4 {
                n += step
                sum += n
            }
            step += 2
        }
        
        print("sum = \(sum)")
        return sum
    }
}
