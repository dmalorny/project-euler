import Foundation

class problem81 {
    
    var max: Int = 0
    var source: [[Int]] = []
    var results: [[Int?]] = []
    
    func get(x: Int, y: Int) -> Int {
        if (results[x][y] != nil) {
            return results[x][y]!
        }
        
        if (x == max && y == max) {
            results[x][y] = source[x][y]
            return results[x][y]!
        }
        
        if (x == max && y < max) {
            results[x][y] = source[x][y] + get(x: x, y: y+1)
            return results[x][y]!
        }
        
        if (x < max && y == max) {
            results[x][y] = source[x][y] + get(x: x+1, y: y)
            return results[x][y]!
        }
        
        if (x < max && y < max) {
            let r = get(x: x+1, y: y)
            let u = get(x: x, y: y+1)
            results[x][y] = source[x][y] + [r,u].min()!
            return results[x][y]!
        }
        
        return 0
    }
    
    func run(grid: [[Int]]) -> Int {
        max = grid.count-1
        source = grid
        results = [[Int?]](repeating: [Int?](repeating: nil, count: max+1), count: max+1)
        
        let min = get(x: 0, y: 0)
        return min
    }
    
    func run() -> Int {
        let url = Bundle.module.url(forResource: "Resources/matrix", withExtension: "txt")!
        let file = try! String(contentsOf: url, encoding: .utf8)
        let grid = split_text_to_array(file)
        
        return run(grid: grid)
    }
}
