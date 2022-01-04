class problem33 {
    init() {}
    
    func run() -> Int {
        var (res_n, res_d) = (1,1)
        
        for d in 1 ... 9 {
            for n in 1 ... d {
                if(n == d) {
                    continue
                }
                
                for x in 1...9 {
                    let q = Double(n)/Double(d)
                    
                    let nx = Double(10*n+x)
                    let dx = Double(10*d+x)
                    let xn = Double(10*x+n)
                    let xd = Double(10*x+d)
                    
                    if (nx/xd == q) {
                        print("\(nx)/\(xd) = \(n)/\(d)")
                        (res_n, res_d) =  (res_n * n, res_d * d)
                    }
                    
                    if (xn/dx == q) {
                        print("\(xn)/\(dx) = \(n)/\(d)")
                        (res_n, res_d) =  (res_n * n, res_d * d)
                    }
                }
            }
        }
        
        print("result: \(res_n)/\(res_d)")
        return res_d/res_n
    }
}
