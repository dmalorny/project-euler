func even(x: Int) -> Bool {
    return x % 2 == 0
}

func problem2(max: Int) {
    var sum = 0
    var a = 0
    var b = 1
    while b < max {
        (a,b) = (b, a+b)
        
        if even(x: a){
            sum += a
        }
    }
    
    print("sum: \(sum)")
}

problem2(max: 4000000)
