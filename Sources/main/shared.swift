// Integer functions
func even(_ x: Int) -> Bool {
    return x % 2 == 0
}

func square(_ x: Int) -> Int {
    return x*x
}

func divisors(_ n: Int) -> [Int] {
    var divisors = [Int]()
    for i in 1 ... Int(Double(n).squareRoot()) {
        if (n % i == 0) {
            if (n / i == i) {
                divisors.append(i)
            } else {
                divisors.append(i)
                divisors.append(n/i)
            }
        }
    }
    divisors.sort()
    return divisors;
}

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

// String functions
func isPalindrome(_ s: String) -> Bool {
    return String(s.reversed()) == s
}

func substring(str: String, start: Int, length: Int) ->  String {
    let a = str.index(str.startIndex, offsetBy: start)
    let b = str.index(str.startIndex, offsetBy: start+length)
    let range = a..<b;
    
    return String(str[range])
}
