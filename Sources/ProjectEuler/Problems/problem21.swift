class problem21 {
    init() {}
    
    func is_amicable(_ n: Int) -> Bool {
        let a = array_sum(divisors(n))-n
        let b = array_sum(divisors(a))-a

        return (b == n && a != b)
    }

    func run(max: Int) -> Int {
        var sum = 0;
        for i in 2 ... max {
            if (is_amicable(i)) {
                sum += i
                print(i)
            }
        }
        print("sum = \(sum)")
        return sum
    }
}
