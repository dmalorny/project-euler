import Foundation
import BigInt

class problem99 {
    
    func run(_ text: String) -> Int {
        let arr = split_text_to_array(text)
        
        for pair in arr {
            let base = BigUInt(pair[0])
            let exp = Int(pair[1])
            
            print(base, exp)
            let pow = base.power(exp)
            
            print(pow.magnitude)
        }
        
        return 0
    }
    
    func run() -> Int {
        let url = Bundle.module.url(forResource: "Resources/base_exp", withExtension: "txt")!
        let file = try! String(contentsOf: url, encoding: .utf8)
        
        return run(file)
    }
}
