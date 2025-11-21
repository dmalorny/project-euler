import Foundation

class problem77 {
    
    func partitions(_ number: Int, top: Int) -> Int {
        if (number < 2) { return 0 }
        if (number == 2) { return 1 }
        
        var total = 0
        for p in ProjectEuler.primes(to: top) {
            let rest = number - p
            total += partitions(rest, top: min(rest, p))
        }
        
        if (number <= top && number.isPrime) {
            total += 1
            return total
        }
        return total
    }

    func run(d: Int) -> Int {
        var result = 0
        var i = 1
        while (result < d) {
            i += 1
            result = partitions(i, top: i)
        }
        print("i: \(i), partitions: \(result)")
        return i
    }
}
