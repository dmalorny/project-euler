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

func permutate(_ list: [Int]) -> [[Int]] {
    if (list.count == 2) {
        return [list.sorted(), list.reversed()]
    }
    
    var result: [[Int]] = []
    for i in 0 ... list.count-1 {
        let item = list[i]
        let rest = list.filter { $0 != item }
        
        for permute_rest in permutate(rest) {
            let combine = [item] + permute_rest
            result.append(combine)
        }
    }
    
    return result
}
