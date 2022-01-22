class problem73 {
    
    var resultset: Set<String> = []
    
    func run(maxD: Int) -> Int {
        
        let lowerLimit = 1.0 / 3.0
        let upperLimit = 1.0 / 2.0
        
        for d in 2 ... maxD {
            
            let lo = Int(Double(d) * lowerLimit)
            let hi = Int(Double(d) * upperLimit) + 1
            
            for n in lo ... hi {
                let q = Double(n)/Double(d)
                
                if (q > lowerLimit && q < upperLimit) {
                    let (nr,dr) = reduceFraction(n,d)
                    let str = "\(nr)/\(dr)"
                    
                    //print("\(n)/\(d) = \(str)")
                    
                    if (!resultset.contains(str)) {
                        resultset.insert(str)
                    }
                    
                }
            }
        }
        
        return resultset.count
    }
}
