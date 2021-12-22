func problem4(lo: Int, hi: Int) {
    var max = 0
    for a in lo ... hi {
        for b in lo ... hi {
            let c = a*b
            if (String(c).isPalindrome()) {
                if (c>max) {
                    max=c
                    print(max)
                }
            }
        }
    }
    print("largest palindrome number: \(max)")
}
