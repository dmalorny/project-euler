class problem44 {
    init() {}
    
    func run() -> Int {
        var k = 1;
         
        while (true) {
            k += 1;
            let pk = pentagonal(k);
         
            for j in stride(from: k-1, to: 0, by: -1) {
                let pj = pentagonal(j);
                
                let S = pk + pj
                let D = pk - pj
                
                if (isPentagonal(S) && isPentagonal(D)) {
                    print("pk = \(pk), pj = \(pj), S = \(S), D = \(D)")
                    return D
                }
            }
        }
    }
}
