class problem10 {

    func run(max: Int) -> Int {
        let primes = primes(to: max)
        //print(primes)
        
        var sum = 0
        for n in  primes {
            sum += n
        }
        
        print("sum = \(sum)")
        return sum
    }
}
