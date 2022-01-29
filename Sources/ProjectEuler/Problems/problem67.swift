import Foundation

class problem67 {
    
    var cache = [[Int?]](repeating: [Int?](repeating: nil, count: 100), count: 100)
    
    func readFile() -> String {
        let url = Bundle.module.url(forResource: "Resources/triangle", withExtension: "txt")!
        let str = try! String(contentsOf: url, encoding: .utf8)
        return str
    }

    func maxsum(arr: [[Int]], row: Int, column: Int) -> Int {
        if (row == arr.count-1) {
            return arr[row][column]
        }
        
        if (cache[row][column] != nil) {
            return cache[row][column]!;
        }
        
        let sum1 = arr[row][column] + maxsum(arr: arr, row: row+1, column: column)
        let sum2 = arr[row][column] + maxsum(arr: arr, row: row+1, column: column+1)
        let maxi = [sum1, sum2].max()!
        
        cache[row][column] = maxi
        
        return maxi
    }

    func run(str: String) -> Int {
        let triangle = split_text_to_array(str, columnSeparator: " ")
        let maxsum = maxsum(arr: triangle, row: 0, column: 0)
        print("maxsum = \(maxsum)")
        return maxsum
    }

    func run() -> Int {
        return run(str: readFile())
    }
}
