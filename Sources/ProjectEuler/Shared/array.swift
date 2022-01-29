// Array functions
func array_sum(_ arr: [Int]) -> Int {
    return arr.reduce(0, +)
}

func digits(_ n: Int) -> [Int] {
    var digits: [Int] = []
    for c in Array(String(n)) {
        digits.append(Int(String(c))!)
    }
    return digits
}

func fromDigits(_ digits: [Int]) -> Int {
    var sum = 0
    for d in digits {
        sum = 10*sum + d
    }
    return sum
}

func split_text_to_array(_ str: String, lineSeparator: Character = "\n", columnSeparator: Character = ",") -> [[Int]] {
    var result = [[Int]]()
    for line in str.split(separator:lineSeparator) {
        var lineresult = [Int]()
        for item in String(line).split(separator:columnSeparator) {
            lineresult.append(Int(item)!)
        }
        result.append(lineresult)
    }
    return result
}

