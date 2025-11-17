import Foundation
import BigInt

class problem80 {
    
    func sqrtHeronBig(_ x: String, digits d: Int) -> String {

        // ---- 1. Eingabe ohne Dezimalpunkt in Ganzzahl umwandeln ----
        let parts = x.split(separator: ".")
        let intStr = String(parts[0])
        let fracStr = parts.count > 1 ? String(parts[1]) : ""

        var N = BigInt(intStr)! * BigInt(10).power(fracStr.count)
        if !fracStr.isEmpty {
            N += BigInt(fracStr)!
        }

        var f = fracStr.count   // Anzahl der Nachkommastellen der Eingabe

        // ---- Falls f ungerade → N und f anpassen ----
        // Wert bleibt äquivalent repräsentiert
        if f % 2 == 1 {
            N *= 10
            f += 1
        }

        // ---- 2. Skalierung für gewünschte Genauigkeit ----
        // Z = N * 10^(2d)
        let Z = N * BigInt(10).power(2 * d)

        // ---- 3. Heron-Verfahren zur Wurzel von Z ----
        var guess = Z
        for _ in 0..<2000 {
            let next = (guess + Z / guess) / BigInt(2)
            if next == guess { break }
            guess = next
        }
        let sqrtZ = guess

        // ---- 4. Ergebnis korrekt skalieren ----
        // sqrt(x) = sqrt(Z) / 10^( d + f/2 )
        let denom = BigInt(10).power(d + f / 2)
        let intPart = sqrtZ / denom
        var fracPart = String(sqrtZ % denom)

        // mit führenden Nullen auffüllen
        while fracPart.count < d {
            fracPart = "0" + fracPart
        }

        return "\(intPart).\(fracPart)"
    }

    
    func run(num: Int, precision: Int) -> Int {
        
        var sum = 0
        
        for n in 1 ... num {
            let result = sqrtHeronBig("\(n)", digits: precision)
            let str = result.replacingOccurrences(of: ".", with: "").left(precision)
            let b = BigUInt(str)!
            let s = digitSum(b)
            
            if (!isSquare(n)) {
                //print("\(str)")
                sum += s
            }
        }
        
        return sum
    }
}
