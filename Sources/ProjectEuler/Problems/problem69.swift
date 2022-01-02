// Brute force implementation:
//func problem69(max: Int) -> Int {
//    var maxP = 0.0
//    var result = 0
//    for n in 1 ... max {
//        let p = Double(n) / Double(phi(n))
//
//        if (p > maxP) {
//            maxP = p
//            result = n
//
//            print("new max: \(n) -> \(p)")
//        }
//    }
//    return result
//}

func problem69(max: Int) -> Int {
    
    var prod = 1
    for p in primes(to: 30) {
        prod *= p
        if (prod > max) {
            return prod/p
        }
    }
    
    return 0
}
