class problem16 {
    
    func double(_ arr: inout [Int]) {
        var overflow = 0
        for i in 0 ... arr.count-1 {
            var digit = 2 * arr[i] + overflow
            overflow = 0
            if (digit > 9) {
                overflow = 1
                digit = digit % 10
                if (i == arr.count-1) {
                    arr.append(overflow)
                }
            }
            arr[i] = digit
        }
    }


    func run(n: Int) -> Int {
        var arr = [1]
        
        for _ in 1 ... n {
            double(&arr)
            //print ("\(arr)")
        }
        var sum = 0
        for i in arr {
            sum += i
        }
        print ("sum: \(sum)")
        return sum
    }
}
