import Foundation

class problem22 {
    init() {}
    
    func run() -> Int {
        let url = Bundle.module.url(forResource: "Resources/names", withExtension: "txt")!
        var str = try! String(contentsOf: url, encoding: .utf8)
        
        str.removeAll(where: { ["\""].contains($0) })
        var names = str.split(separator:",")
        names.sort()
        
        var i=0
        var sum=0
        for name in names {
            i += 1
            let value = String(name).wordValue
            let score = i * value
            sum += score
            //print("\(i): \(name): \(score)")
        }
        
        print("Total score: \(sum)")
        return sum
    }
}
