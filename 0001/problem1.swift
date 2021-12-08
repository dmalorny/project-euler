func is_multiple_of_3_or_5(x: Int) -> Bool {
    return x % 3 == 0 || x % 5 == 0
}

func problem1(max: Int) {
    var sum = 0
    for n in 1 ... max-1 {
        if (is_multiple_of_3_or_5(x: n)) {
            sum += n
        }
    }
    
    print("sum: \(sum)")
}

problem1(max: 1000)
