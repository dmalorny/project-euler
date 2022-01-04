class problem4 {
    init() {}
    
    func run(lo: Int, hi: Int) -> Int{
        var max = 0
        for a in lo ... hi {
            for b in lo ... hi {
                let c = a*b
                if (String(c).isPalindrome()) {
                    if (c>max) {
                        max=c
                    }
                }
            }
        }
        print("largest palindrome number: \(max)")
        return max
    }
}
