func problem2(max: Int) {
    var sum = 0
    var a = 0
    var b = 1
    while b < max {
        (a,b) = (b, a+b)
        
        if even(a){
            sum += a
        }
    }
    
    print("sum: \(sum)")
}