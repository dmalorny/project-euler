import Foundation

func readFile() -> String {
    let url = Bundle.module.url(forResource: "Resources/triangle", withExtension: "txt")!
    let str = try! String(contentsOf: url, encoding: .utf8)
    return str
}

func maxsum67(arr: [[Int]], row: Int, column: Int, _ cache: inout [[Int?]]) -> Int {
	if (row == arr.count-1) {
		return arr[row][column]
	}
	
	if (cache[row][column] != nil) {
		return cache[row][column]!;
	}
	
	let sum1 = arr[row][column] + maxsum67(arr: arr, row: row+1, column: column, &cache)
	let sum2 = arr[row][column] + maxsum67(arr: arr, row: row+1, column: column+1, &cache)
	let maxi = [sum1, sum2].max()!
	
	cache[row][column] = maxi
	
	return maxi
}

func problem67(str: String) -> Int {
    var cache = [[Int?]](repeating: [Int?](repeating: nil, count: 100), count: 100)
    
	let triangle = split_text_to_array(str: str)
    let maxsum = maxsum67(arr: triangle, row: 0, column: 0, &cache)
	print("maxsum = \(maxsum)")
    return maxsum
}

func problem67() -> Int {
    return problem67(str: readFile())
}
