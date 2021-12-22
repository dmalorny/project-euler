func factor(x: Int, f: Int) {
    if (x % f == 0) {
        print("factor \(f)")
        return factor(x: x/f, f: f)
    }
    
    if (f<x) {
        return factor(x: x, f: f+1)
    } else {
        print("largest prime factor: \(f)")
    }
}

func problem3(n: Int) {
    factor(x: n, f: 2)
}
