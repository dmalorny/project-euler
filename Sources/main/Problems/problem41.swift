func check(n: Int) -> Int {
    let set = Array(stride(from: n, to: 0, by: -1))
    let permutations = set.permutations()
    
    for permutation in permutations {
        let c = fromDigits(permutation)
        if (c.isPrime) {
            return c
        }
    }
    
    return 0
}

func problem41() {
    for n in 1 ... 9 {
        let p = check(n: n)
        print("n=\(n) -> \(p)")
    }
}
