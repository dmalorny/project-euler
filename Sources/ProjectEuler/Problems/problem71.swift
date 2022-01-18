class problem71 {
    
    func run(maxD: Int) -> Int {
        
        var (optN,optD,max) = (0, 0, 0.0)
        let limit = 3.0 / 7.0
        
        for d in 2 ... maxD {
            
            let lowerLimit = Int(Double(d) * limit)
            
            for n in lowerLimit ..< d {
                let q = Double(n)/Double(d)
                
                if (q >= limit) {
                    break
                }
                
                if (q > max) {
                    (optN,optD,max) = (n,d,q)
                }
            }
        }
        
        let ggt = gcd(optN,optD)
        optN /= ggt
        optD /= ggt
        print("\(optN)/\(optD)")
        
        return optN
    }
}
