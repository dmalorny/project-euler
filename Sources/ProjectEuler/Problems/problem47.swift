func problem47(n: Int) -> Int {
    var count = 0
    var i = 0
    
    while(true) {
        i += 1
        let c = primeFactors(i).count
        
        //print ("\(i): \(c)")
        if (c == n) {
            if (count < n-1) {
                count += 1
            } else {
                return i-n+1
            }
        } else {
            count = 0
        }
        
    }
}
