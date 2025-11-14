import Foundation

class problem74 {
    
    var sum_cache: [Int:Int] = [:]
    var cycle_cache: [Int:Int] = [:]
    
    func sum_of_factorial_digits(_ n: Int) -> Int {
        let sum = digits(n).map({ factorial($0) }).reduce(0, +)
        sum_cache[n] = sum
        return sum
    }
    
    func cycle_length(_ n: Int) -> Int {
        var result: [Int] = []
        
        var c = n
        
        while (!result.contains(c)) {
            result.append(c)
            if (cycle_cache[c] != nil) {
                cycle_cache[n] = result.count + cycle_cache[c]! - 1
                return result.count + cycle_cache[c]! - 1
            }
            c = sum_cache[c] != nil ? sum_cache[c]! : sum_of_factorial_digits(c)
        }
        cycle_cache[n] = result.count
        return result.count
    }
    
    func run(max: Int) -> Int {
        var count = 0
        for i in 1 ... max {
            let c = cycle_length(Int(i))
            if (c == 60) {
                count += 1
                print("\(i)")
            }
        }
        
        print("sum_cache size: \(sum_cache.count)")
        print("cycle_cache size: \(cycle_cache.count)")
        
        return count
    }
}
