import Foundation

class problem85 {
    
    func run(target: Int) -> Int {
        
        var min = target
        var solution = 0
        
        for x in 1 ... 100 {
            for y in 1 ... 100 {
                let r = triangle(x) * triangle(y)
                
                if (abs(r - target) < min) {
                    //print("\(x) * \(y): \(r)")
                    min = abs(r - target)
                    solution = x*y
                }
            }
        }
        
        return solution
    }
}
