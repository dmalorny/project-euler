import Foundation

class problem99 {
    
    func run(_ text: String) -> Int {
        let arr = split_text_to_array(text)
        var line = 1
        var max = 0.0
        var maxLine = 0
        
        for pair in arr {
            let base = Int(pair[0])
            let exp = Int(pair[1])
            
            let b = Double(base)
            let e = Double(exp) / 1_000_000
            
            let p = pow(b,e)
            
            if (p > max) {
                max = p
                maxLine = line
            }
            //print(line, b, e, p)
        
            line += 1
        }
        
        return maxLine
    }
    
    func run() -> Int {
        let url = Bundle.module.url(forResource: "Resources/base_exp", withExtension: "txt")!
        let file = try! String(contentsOf: url, encoding: .utf8)
        
        return run(file)
    }
}
