import Foundation

class problem75 {
    
    var cache: [Int:[String]] = [:]
    
    func addToCache(_ a: Int, _ b: Int, _ c: Int) {
        let L = a+b+c
        let str = "\(a),\(b),\(c)"
        
        var solutions = cache[L] ?? []
        if (!solutions.contains(str)) {
            solutions.append(str)
        }
        
        cache[L] = solutions
    }
    
    func run(ceiling: Int) -> Int {
        for m in 2 ... Int(Double(ceiling).squareRoot()) {
            for n in 1 ... m-1 {
                let x1 = m*m - n*n
                let x2 = 2 * m * n
                
                let a = min(x1,x2)
                let b = max(x1,x2)
                let c = m*m + n*n
                
                let L = a+b+c
                var k = 1
                
                while (k * L <= ceiling) {
                    //print("\(k*L)cm: (\(k*a),\(k*b),\(k*c))")
                    addToCache(k*a, k*b, k*c)
                    k += 1
                }
            }
        }
        
        let count = cache.filter {$0 .value.count == 1}.count
        
        return count
    }
}
