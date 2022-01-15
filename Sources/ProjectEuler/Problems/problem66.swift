import BigInt

class problem66 {
    
    func test(_ D: BigUInt, _ x: BigUInt, _ y: BigUInt) -> Bool {
        if (x.power(2) == D * y.power(2) + 1) {
            //print("\(x)^2 - \(D)×\(y)^2 = 1")
            return true
        }
        
        return false
    }
    
    func run(maxD: Int) -> Int {
        var (maxX,optD) = (BigUInt(0),0)
        
        for D in 2 ... maxD {
            if (isSquare(D)) {
                continue
            }
            let limit = BigUInt(D).squareRoot()

            var (m,d,a) = (BigUInt(0),BigUInt(1),limit)
            var (n1,n2,x) = (BigUInt(1),BigUInt(0),limit)
            var (d1,d2,y) = (BigUInt(0),BigUInt(0),BigUInt(1))
            
            while(!test(BigUInt(D),x,y)){
                m = d * a - m;
                d = (BigUInt(D) - m.power(2)) / d;
                a = (limit + m) / d;

                (n1,n2) = (x,n1)
                (d1,d2) = (y,d1)
                
                (x,y) = (a * n1 + n2, a * d1 + d2)
            }
            
            if (x > maxX) {
                (maxX,optD) = (x,D)
            }
        }
        
        return optD
    }
}
