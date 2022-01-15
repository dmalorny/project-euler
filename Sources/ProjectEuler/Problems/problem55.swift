import BigInt

class problem55 {
    
    func isPalindome(_ n: BigUInt) -> Bool {
        return String(n).isPalindrome()
    }
    
    func reverseAdd(_ n: BigUInt) -> BigUInt {
        let b = BigUInt(String(String(n).reversed()))!
        return n+b
    }
    
    func isLychrel(_ n: Int) -> Bool {
        var i=0
        var b = BigUInt(n)
        while(i<50) {
            b = reverseAdd(b)
            i += 1
            if (isPalindome(b)) {
                return false
            }
        }
        //print("\(n) is Lychrel")
        return true
    }
    
    func run() -> Int {
        var count = 0
        for n in 1 ... 9999 {
            if (isLychrel(n)) {
                count += 1
            }
        }
        return count
    }
}
