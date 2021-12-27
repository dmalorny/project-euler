
func concatenated_product(s: Int, n: Int) -> String{
    var str = ""
    
    for i in 1 ... n {
        str += String(s * i)
    }
    
    return str
}

func is_pandigital(_ str: String) -> Bool {
    if (str.count) != 9 {
        return false
    }
    
    for i in 1 ... 9 {
        if (!str.contains(String(i))) {
            return false
        }
    }
    
    return true
}

func problem38() {
    var max = 0;
    for a in 1 ... 10000 {
        for b in 2 ... 9 {
            let str = concatenated_product(s: a, n: b)
            let val = Int(str) ?? 0
            
            if (is_pandigital(str)) {
                print("\(a), \(b): \(str)")
                if (val > max) {
                    max = val
                }
            }
        }
    }
    
    print("maximum: \(max)")
}

