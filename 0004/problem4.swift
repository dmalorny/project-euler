func isPalindrome(s: String) -> Bool {
    return String(s.reversed()) == s
}

func problem4(lo: Int, hi: Int) {
    var max = 0
    for a in lo ... hi {
        for b in lo ... hi {
            let c = a*b
            if (isPalindrome(s: String(c))) {
                if (c>max) {
                    max=c
                    print(max)
                }
            }
        }
    }
    print("largest palindrome number: \(max)")
}

problem4(lo: 100, hi: 999)
