import Algorithms

class problem43 {
    
    func check(_ arr: [Int]) -> Bool {
        if (fromDigits(Array(arr[1...3])) % 2 != 0) {
            return false
        }
        if (fromDigits(Array(arr[2...4])) % 3 != 0) {
            return false
        }
        if (fromDigits(Array(arr[3...5])) % 5 != 0) {
            return false
        }
        if (fromDigits(Array(arr[4...6])) % 7 != 0){
            return false
        }
        if (fromDigits(Array(arr[5...7])) % 11 != 0) {
            return false
        }
        if (fromDigits(Array(arr[6...8])) % 13 != 0) {
            return false
        }
        if (fromDigits(Array(arr[7...9])) % 17 != 0) {
            return false
        }
        
        return true
    }

    func run() -> Int {
        var sum = 0
        
        let permutations = [0,1,2,3,4,5,6,7,8,9].permutations()
        for permutation in permutations {
            if (check(permutation)) {
                let num = fromDigits(permutation)
                print(num)
                sum += num
            }
        }
        
        return sum
    }
}
