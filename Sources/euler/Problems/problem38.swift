
func concatenated_product(s: Int, n: Int) -> String{
    var str = ""
    
    for i in 1 ... n {
        str += String(s * i)
    }
    
    return str
}

func problem38() -> Int {
    var max = 0;
    for a in 1 ... 10000 {
        for b in 2 ... 9 {
            let str = concatenated_product(s: a, n: b)
            let val = Int(str) ?? 0
            
            if (str.isPandigital(9)) {
                print("\(a), \(b): \(str)")
                if (val > max) {
                    max = val
                }
            }
        }
    }
    
    print("maximum: \(max)")
    return max
}

