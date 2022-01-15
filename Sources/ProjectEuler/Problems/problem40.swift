class problem40 {
    
    func number_of_digits(_ i: Int) -> Int {
        return String(i).count
    }

    func extract(_ i: Int, _ p: Int) -> Int {
        print("extract(\(i),\(p))")
        let str = String(i)
        return Int(str.substring(start: p-1, length: 1))!
    }

    func check_digit(i: Int, len: Int, step: Int, pos: Int)  -> Int {
        if (len < pos && len + step >= pos) {
            let d = extract(i, pos-len)
            print(d)
            return d
        }
        return 1
    }
     
    func run() -> Int {
        var len=0
        var i=1
        var prod = 1

        while (len <= 1000000) {
            let step = number_of_digits(i)
            
            prod *= check_digit(i:i, len:len, step:step, pos: 1)
            prod *= check_digit(i:i, len:len, step:step, pos: 10)
            prod *= check_digit(i:i, len:len, step:step, pos: 100)
            prod *= check_digit(i:i, len:len, step:step, pos: 1000)
            prod *= check_digit(i:i, len:len, step:step, pos: 10000)
            prod *= check_digit(i:i, len:len, step:step, pos: 100000)
            prod *= check_digit(i:i, len:len, step:step, pos: 1000000)

            len += step
            i += 1
        }
        
        print("product: \(prod)")
        return prod
    }
}
