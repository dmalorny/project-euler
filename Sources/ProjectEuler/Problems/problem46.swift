class problem46 {
    
    func test_goldbach(_ n: Int) -> Bool {
        let max = Int((Double(n)/2.0).squareRoot())
        
        for i in stride(from: max, to: 0, by: -1) {
            let rest = n - 2*i*i
            
            if (rest.isPrime) {
                //print("\(n) = \(rest) + 2*\(i)^2")
                return true
            }
        }
        
        return false
    }

    func run() -> Int {
        var n=1
        
        while (true) {
            n += 2
            if (n.isPrime) {
                continue
            }
            
            if (!test_goldbach(n)) {
                return n
            }
        }
    }
}
