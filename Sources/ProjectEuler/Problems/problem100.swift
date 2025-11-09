import Foundation
import BigInt

class problem100 {
    
    func test(_ b: BigInt, _ r: BigInt) -> Bool {
        return (r*r) - (b*b) + 2*b*r + b - r == 0
    }
    
    func run(min: BigInt, max: BigInt) -> BigInt {
        
        let minb = min * 60 / 100
        let maxb = min * 80 / 100
        
        for b in minb ... maxb {
            
            let minr = min - b
            let maxr = max - b
            
            print("b = \(b)... min = \(minr), max = \(maxr)")
            for r in minr ... maxr {
                if test(BigInt(b), BigInt(r)) {
                    print("found solution (b=\(b), r=\(r))")
                    return BigInt(b)
                }
            }
        }
    
        return 0
    }
    
}
