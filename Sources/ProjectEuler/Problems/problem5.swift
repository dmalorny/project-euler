class problem5 {

    func run(max: Int) -> Int {
        var num = max
        var found = false
        while (!found) {
            var dividable = true
            for divisor in 2 ... max {
                if (num % divisor != 0) {
                    dividable = false
                    break
                }
            }
            if (dividable) {
                found = true
            } else {
                num += max
            }
        }
        print("result: \(num)")
        return num
    }
}
