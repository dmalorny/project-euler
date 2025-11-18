import Foundation

class problem96 {
    
    func solveSudoku(_ grid: [[Int]]) -> Int {
        printSudoku(grid)
        
        return 100 * grid[0][0] + 10 * grid[0][1] + grid[0][2]
    }
    
    func printSudoku(_ grid: [[Int]]) {
        print("+-------+-------+-------+")
        for r in 0 ... 8 {
            let line = grid[r]
            print("| \(line[0]) \(line[1]) \(line[2]) | \(line[3]) \(line[4]) \(line[5]) | \(line[6]) \(line[7]) \(line[8]) |")
            if (r % 3 == 2) {
                print("+-------+-------+-------+")
            }
        }
    }
    
    func run(from: Int, to: Int) -> Int {
        let url = Bundle.module.url(forResource: "Resources/sudoku", withExtension: "txt")!
        let file = try! String(contentsOf: url, encoding: .utf8)
        let lines = file.split(separator:"\n")
        
        var result_sum = 0
        
        for s in from ... to {
            print(lines[s*10])
            var grid: [[Int]] = []
            for i in 1 ... 9 {
                grid.append(lines[s*10 + i].map { Int(String($0)) ?? 0 })
            }
            result_sum += solveSudoku(grid)
        }
        
        return result_sum
    }
}
