import BigInt

func fibonacci(_ max: BigUInt) {
	var i = 1
    var a: BigUInt = 1
    var b: BigUInt = 1
    var len = 0
    while len < max {
    	len = String(a).count
        print("F\(i): \(len)")
        
        (a,b) = (b, a+b)
        i += 1
    }
    
}

func problem25() {
    fibonacci(1000)
}
