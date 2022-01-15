class problem26 {
    
    func cycle_length(_ nominator: Int, _ denominator: Int) -> Int {
        var n = nominator
        var d = denominator
        var c = 0
        // validate
        if (n*d == 0 || n == d) {
            return 0
        }
        // shorten
        while (d % 2 == 0) {
            d /= 2
        }
        while (d % 5 == 0) {
            d /= 5
        }
        
        // find 10^i with rest 1
        if (n == 1) {
            n = 10
            c += 1
        }
        var r = n % d
        
        while (r > 1) {
            c += 1
            n = (n * 10) % d
            r = n % d
        }
        if (r == 0) {
            return 0
        }
        
        return c
    }

    func run(max: Int) -> Int {
        var max_length = 0
        var index = 0
        for d in 1 ... max {
            let l = cycle_length(1,d)
            //print ("\(d): \(l)")
            if (l > max_length) {
                max_length = l
                index = d
            }
        }
        print("maximum: \(index): \(max_length)")
        return index
    }
}
