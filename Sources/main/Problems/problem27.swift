import BigInt

func calculate(a: Int, b: Int, n: Int) -> Int {
    return n * (n + a) + b
}

func max_langth(a: Int, b: Int) -> Int {
    var n=0
    var res = calculate(a:a, b:b, n:n)
    while ((BigInt(res)).isPrime()) {
        n += 1
        res = calculate(a:a, b:b, n:n)
    }
    return n
}

func problem27() {
    var max_length = 0
    var best_a = 0
    var best_b = 0
    for a in -999 ... 999 {
        for b in stride(from: -999, to: 999, by: 2) {
            let len = max_langth(a:a, b:b)
            if (len > max_length) {
                max_length = len
                (best_a, best_b) = (a,b)
            }
            print("\(a),\(b): \(len)")
        }
    }
    
    let product = best_a * best_b
    print("\(best_a),\(best_b): \(max_length), product: \(product)")
}
