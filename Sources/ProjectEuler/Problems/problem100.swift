import Foundation
import BigInt

class problem100 {
    
    func calcS(_ n: Int) -> Int64 {
        let sq = sqrt(2)
        let dn = Double(n)
        
        let x = (1+sq) * pow(3-2*sq,dn)
        let y = (sq-1) * pow(3+2*sq,dn)
        let s = (y-x+2) / 4
        return Int64(round(s))
    }
    
    func calcB(_ n: Int) -> Int64 {
        let sq = sqrt(2)
        let dn = Double(n)
        
        let x = (2+sq) * pow(3-2*sq,dn)
        let y = (sq-2) * pow(3+2*sq,dn)
        let b = (x-y+4) / 8
        return Int64(round(b))
    }
    
    func run(start: Int64) -> Int64 {
        
        var n: Int = 3
        var s: Int64 = 0
        var b: Int64 = 0
        
        while (s < start) {
            b = calcB(n)
            s = calcS(n)
            
            print("b = \(b), r = \(s-b), sum = \(s)")
            n += 1
        }
        
        return b
    }
    
}
