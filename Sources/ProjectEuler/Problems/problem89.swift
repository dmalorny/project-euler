import Foundation

class problem89 {
    init() {}
    
    func run() -> Int {
        let url = Bundle.module.url(forResource: "Resources/roman", withExtension: "txt")!
        let file = try! String(contentsOf: url, encoding: .utf8)
        let lines = file.split(separator: "\n").map({String($0)})
        
        var sum = 0
        
        for line in lines {
            let num = fromRoman(line)
            let shortest = toRoman(num)
            
            //print(line, line.count, num, shortest, shortest.count)
            
            sum += (line.count - shortest.count)
        }
        
        return sum
    }
}
