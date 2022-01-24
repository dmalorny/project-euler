import Algorithms

class problem32 {
    
    var result: Set<Int> = []
    
    func check(_ arr: [Int]) {
        let p = fromDigits(Array(arr[0...3]))
        let a = fromDigits(Array(arr[4...6]))
        let b = fromDigits(Array(arr[7...8]))
        let c = fromDigits(Array(arr[4...7]))
        let d = fromDigits(Array(arr[8...8]))
        
        if (p == a * b) {
            print("\(p) = \(a) * \(b)")
            result.insert(p)
        }
        if (p == c * d) {
            print("\(p) = \(c) * \(d)")
            result.insert(p)
        }
    }

    func run() -> Int {
        let permutations = [1,2,3,4,5,6,7,8,9].permutations()
        for permutation in permutations {
            check(permutation)
        }
        
        let sum = result.reduce(0, +)
        print(sum)
        return sum
    }
}
