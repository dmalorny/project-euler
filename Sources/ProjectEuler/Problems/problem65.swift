import BigInt

class problem65 {
    init() {}
    
    var dict: [Int:(BigUInt, BigUInt)] = [:]
    
    func term(_ k: Int) -> (BigUInt, BigUInt){
        if (k==1) {
            return (2,1)
        }
        if (k==2) {
            return (3,1)
        }
        if (dict[k] == nil) {
            let f = BigUInt(k % 3 == 0 ? 2*(k+1)/3 : 1)
            
            let (n1,d1) = term(k-1)
            let (n2,d2) = term(k-2)
            
            dict[k] = (f*n1+n2,f*d1+d2)
        }
        
        return dict[k]!
    }
    
    func run(k: Int) -> Int {
        let (n,d) = term(k)
        print("\(n)/\(d)")
        return digitSum(n)
    }
}
