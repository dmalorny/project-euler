class problem92 {
    
    var resultSet: Set<Int> = []
    
    func chainArrivesAt89(_ n: Int, _ acc: [Int] = []) -> Bool {
        if (n == 89) {
            return true
        }
        if (resultSet.contains(n)) {
            return true
        }
        if (acc.contains(n)) {
            return false
        }
        
        var s = 0
        for d in digits(n) {
            s += d*d
        }
        
        let res = chainArrivesAt89(s, acc + [n])
        
        if (res) {
            resultSet.insert(n)
        }
        
        return res
    }
    
    
    func run(max: Int) -> Int {
        
        var count = 0
        
        for n in 1 ... max {
            let res = chainArrivesAt89(n)
            if (res) {
                count += 1
            }
            //print(n,res, count)
        }
        
        return count
    }
}
