func is_double_base_palindromic(_ n: Int) -> Bool {
    let dec = String(n)
    let bin = String(n, radix: 2)
    
    if (!dec.isPalindrome()) {
        return false
    }
    if (!bin.isPalindrome()) {
        return false
    }
    
    print("\(dec), \(bin)")
    return true
}

func problem36(max: Int) {
    var sum = 0
    for n in 1...max {
        if (is_double_base_palindromic(n)) {
            sum += n
        }
    }
    
    print("sum = \(sum)")
}
