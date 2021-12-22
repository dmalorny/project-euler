func filter(arr: Array<Int>, num: Int) -> Array<Int> {
    let filtered = arr.filter { n in
        return n==num || n % num != 0
    }
    return filtered
}

func find_next(arr: Array<Int>, num: Int) -> Int {
    for i in 0 ... arr.count {
        if (arr[i]>num) {
            return arr[i]
        }
    }
    return -1
}

func problem10(max: Int) {
    var numbers = Array(2...max)
    //print(numbers)
    
    var curr = 2
    
    while (curr < numbers.count / 2) {
        numbers = filter(arr: numbers, num: curr)
        //print(numbers)
        print(curr)
        curr = find_next(arr: numbers, num: curr)
    }
    
    var sum = 0
    for n in  numbers {
        sum += n
    }
    
    print("sum = \(sum)")
}
