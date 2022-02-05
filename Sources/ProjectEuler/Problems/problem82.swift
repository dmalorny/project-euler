import Foundation

class problem82 {
    
    var max: Int = 0
    var source: [[Int]] = []
    var results: [[Int?]] = []
    
    func get(_ x: Int, _ y: Int) -> Int {
    
        if (results[y][x] != nil) {
            return results[y][x]!
        }
        
        if (x == max) {
            results[y][x] = source[y][x]
            return results[y][x]!
        }
        
        if (x < max) {
            // nach rechts
            var min = source[y][x] + get(x+1, y)
            
            // nach oben
            if (y > 0) {
                for yt in 0 ... y-1 {
                    var newMin = get(x+1, yt) // right of yt
                    for yc in yt ... y {
                        newMin += source[yc][x]
                    }
                    if (newMin < min) {
                        min = newMin
                    }
                }
            }
            
            
            // nach unten
            if (y < max) {
                for yt in y+1 ... max {
                    var newMin = get(x+1, yt) // right of yt
                    for yc in y ... yt {
                        newMin += source[yc][x]
                    }
                    if (newMin < min) {
                        min = newMin
                    }
                }
            }
            
            results[y][x] = min
            return results[y][x]!
        }
        
        return 0
    }
    
    func run(grid: [[Int]]) -> Int {
        max = grid.count-1
        source = grid
        results = [[Int?]](repeating: [Int?](repeating: nil, count: max+1), count: max+1)
        
        //print("source", source)
        
        var min = Int.max
        for y in 0 ... max {
            let cand = get(0, y)
            // print ("cand",cand)
            if (cand < min) {
                min = cand
            }
        }
        
        //print("results", results)
       
        return min
    }
    
    func run() -> Int {
        let url = Bundle.module.url(forResource: "Resources/matrix", withExtension: "txt")!
        let file = try! String(contentsOf: url, encoding: .utf8)
        let grid = split_text_to_array(file)
        
        return run(grid: grid)
    }
}
