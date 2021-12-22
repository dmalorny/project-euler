// Array functions
func array_sum(_ arr: [Int]) -> Int {
    return arr.reduce(0, +)
}

func split_text_to_array(str: String) -> [[Int]] {
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

