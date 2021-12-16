import Foundation

let triangle_a = """
3
7 4
2 4 6
8 5 9 3
"""

let url = URL.init(fileURLWithPath: "./triangle.txt")
let triangle_b = try String(contentsOf: url, encoding: .utf8)

var cache = [[Int?]](repeating: [Int?](repeating: nil, count: 100), count: 100)

func split(str: String) -> [[Int]] {
	var result = [[Int]]()
	for line in str.split(separator:"\n") {
		var lineresult = [Int]()
		for item in String(line).split(separator:" ") {
			lineresult.append(Int(item)!)
		}
		result.append(lineresult)
	}
	return result
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

func problem67(str: String) {
	print(str)
	let triangle = split(str: str)
	let maxsum = maxsum(arr: triangle, row: 0, column: 0)
	print("maxsum = \(maxsum)")
}


problem67(str: triangle_b)