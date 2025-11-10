import Foundation
import BigInt

class problem100 {
    
    func calcS(_ n: Int) -> Int64 {
        let sq = sqrt(2)
        let dn = Double(n)
        
        let x = (1+sq) * pow(3-2*sq,dn)
        let y = (sq-1) * pow(3+2*sq,dn)
        let s = 1/4*(-x+y+2)
        return Int64(s)
    }
    
    func calcB(_ n: Int) -> Int64 {
        let sq = sqrt(2)
        let dn = Double(n)
        
        let x = (2+sq) * pow(3-2*sq,dn)
        let y = (sq-2) * pow(3+2*sq,dn)
        let b = 1/8*(x-y+4)+1
        return Int64(b)
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
