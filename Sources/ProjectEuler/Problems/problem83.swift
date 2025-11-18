import Foundation

class problem83 {
    
    var max: Int = 0
    var source: [[Int]] = []
    var results: [[Int?]] = []
    
    func get(x: Int, y: Int) -> Int {
        // known value
        if (results[x][y] != nil) {
            return results[x][y]!
        }
        
        // bottom right
        if (x == max && y == max) {
            results[x][y] = source[x][y]
            return results[x][y]!
        }
        
        // other
        var candidates:[Int] = []
        if (x < max) { // R
            candidates.append(get(x: x+1, y: y))
        }
        if (y < max) { // D
            candidates.append(get(x: x, y: y+1))
        }
        
        for n in 1 ... 10 {
            if (y > 0 && x+n-1 < max) { // U,n*R,D
                var sum = source[x][y-1]
                for i in 1 ... n {
                    sum += source[x+i][y-1]
                }
                candidates.append(sum + get(x: x+n, y: y))
            }
            if (x > 0 && y+n-1 < max) { // L,n*D,R
                var sum = source[x-1][y]
                for i in 1 ... n {
                    sum += source[x-1][y+i]
                }
                candidates.append(sum + get(x: x, y: y+n))
            }
        }

        if (candidates.isEmpty) {
            return -1
        }
        results[x][y] = source[x][y] + candidates.min()!
        return results[x][y]!
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
