class problem6 {
    init() {}

    func sum_of_squares(n: Int) -> Int {
        var sum = 0
        for i in 1 ... n {
            sum += i.squared
        }
        return sum
    }

    func square_of_sum(n: Int) -> Int {
        var sum = 0
        for i in 1 ... n {
            sum += i
        }
        return sum.squared
    }

    func run(n: Int) -> Int {
        let a = square_of_sum(n: n)
        let b = sum_of_squares(n: n)
        
        let c = a - b
        
        print("\(a) - \(b) = \(c)")
        return c
    }
}
