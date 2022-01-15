class problem14 {
    
    var collatz = [Int: Int]()

    func collatz(n: Int) -> Int {
        if (n == 1) {
            return 1;
        }
        
        if (collatz[n] != nil) {
            return collatz[n]!;
        }
        
        let next = (n % 2 == 0) ? n/2 : 3*n + 1
        let result = 1 + collatz(n: next)
        collatz[n] = result
        return result
    }

    func run(n: Int) -> Int {
        var max_length = 0
        var start = 0
        for i in 1 ... n {
            let len = collatz(n: i)
            //print("\(i) -> \(len)")
            
            if (len > max_length) {
                max_length = len
                start = i
            }
            
        }
        print("max: \(max_length), start: \(start)")
        return start
     }
}
