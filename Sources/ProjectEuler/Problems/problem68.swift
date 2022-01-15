import Darwin
class problem68 {
    
    func check(n: Int, outerNumbers: [Int], innerNumbers: [Int]) -> Int {
        
        var str = ""
        if (n == 3) {
            let sum1 = outerNumbers[0]+innerNumbers[0]+innerNumbers[1]
            let sum2 = outerNumbers[1]+innerNumbers[1]+innerNumbers[2]
            let sum3 = outerNumbers[2]+innerNumbers[2]+innerNumbers[0]
            
            if (!(sum1 == sum2 && sum2 == sum3)) {
                return 0
            }
            
            str += String(outerNumbers[0])+String(innerNumbers[0])+String(innerNumbers[1])
            str += String(outerNumbers[1])+String(innerNumbers[1])+String(innerNumbers[2])
            str += String(outerNumbers[2])+String(innerNumbers[2])+String(innerNumbers[0])
        }
        
        if (n == 5) {
            let sum1 = outerNumbers[0]+innerNumbers[0]+innerNumbers[1]
            let sum2 = outerNumbers[1]+innerNumbers[1]+innerNumbers[2]
            let sum3 = outerNumbers[2]+innerNumbers[2]+innerNumbers[3]
            let sum4 = outerNumbers[3]+innerNumbers[3]+innerNumbers[4]
            let sum5 = outerNumbers[4]+innerNumbers[4]+innerNumbers[0]
            
            if (!(sum1 == sum2 && sum2 == sum3 && sum3 == sum4 && sum4 == sum5)) {
                return 0
            }
            
            str += String(outerNumbers[0])+String(innerNumbers[0])+String(innerNumbers[1])
            str += String(outerNumbers[1])+String(innerNumbers[1])+String(innerNumbers[2])
            str += String(outerNumbers[2])+String(innerNumbers[2])+String(innerNumbers[3])
            str += String(outerNumbers[3])+String(innerNumbers[3])+String(innerNumbers[4])
            str += String(outerNumbers[4])+String(innerNumbers[4])+String(innerNumbers[0])
            
            if (str.count > 16) {
                return 0
            }
        }
        
        print(str)
        return Int(str)!
    }
    
    func run(n: Int) -> Int {
        guard [3,5].contains(n) else { return 0 }
                
        var max = 0
        let numbers = Array(stride(from: 1, to: 2*n+1, by: 1))
        
        let outerPermutations =  numbers.permutations(ofCount: n).filter({
            for i in 1 ... n-1 {
                if ($0[0] > $0[i]) {
                    return false
                }
            }
            return true
        })
        
        for outer in outerPermutations {
            let rest = numbers.filter({ !outer.contains($0) })
            let innerPermutations = rest.permutations(ofCount: n)
            
            for inner in innerPermutations {
                
                let res = check(n: n, outerNumbers: outer, innerNumbers: inner)
                if (res > max) {
                    max = res
                }
                
            }
        }
        
        return max
    }
}
