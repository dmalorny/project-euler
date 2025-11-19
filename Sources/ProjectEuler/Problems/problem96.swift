import Foundation

class problem96 {
    
    func solve(_ board: inout [[Int]]) -> Bool {
        for row in 0 ... 8 {
            for col in 0 ... 8 {
                if board[row][col] == 0 {
                    
                    // Try numbers 1–9
                    for num in 1 ... 9 {
                        if isValid(board, row, col, num) {
                            board[row][col] = num
                            
                            // Recursively solve, return true if successful
                            if solve(&board) {
                                return true
                            }
                            
                            // Backtrack
                            board[row][col] = 0
                        }
                    }
                    
                    // No valid number found → unsolvable from this path
                    return false
                }
            }
        }
        
        // No empty cells left → solved
        return true
    }

    func isValid(_ board: [[Int]], _ row: Int, _ col: Int, _ num: Int) -> Bool {
        // Check row
        for c in 0 ... 8 {
            if board[row][c] == num { return false }
        }
        
        // Check column
        for r in 0 ... 8 {
            if board[r][col] == num { return false }
        }
        
        // Check 3×3 box
        let startRow = (row / 3) * 3
        let startCol = (col / 3) * 3
        for r in 0 ... 2 {
            for c in 0 ... 2 {
                if board[startRow + r][startCol + c] == num { return false }
            }
        }
        
        return true
    }

    
    func solveSudoku(_ grid: [[Int]]) -> Int {
        var tmp = grid
        //printSudoku(grid)
        
        if (solve(&tmp)) {
            printSudoku(tmp)
            return 100 * tmp[0][0] + 10 * tmp[0][1] + tmp[0][2]
        }
        
        return 0
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
