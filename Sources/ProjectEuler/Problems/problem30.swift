class problem30 {
    
    func powersum(n: Int, p: Int) -> Int {
        var sum = 0
        for d in Array(String(n)) {
            let b = Int(String(d))!
            let r = b ^^ p
            sum += r
        }
        
        return sum
    }

    func run(_ p: Int) -> Int {
        var total = 0
        for n in 2 ... 1000000 {
            if (n == powersum(n:n, p:p)) {
                print(n)
                total += n
            }
        }
        print("total = \(total)")
        return total
    }
}
