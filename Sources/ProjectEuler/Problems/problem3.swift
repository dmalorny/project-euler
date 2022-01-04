class problem3 {
    init() {}
    
    func factor(x: Int, f: Int) -> Int {
        if (x % f == 0) {
            print("factor \(f)")
            return factor(x: x/f, f: f)
        }
        
        if (f<x) {
            return factor(x: x, f: f+1)
        } else {
            print("largest prime factor: \(f)")
            return f
        }
    }

    func run(n: Int) -> Int {
        return factor(x: n, f: 2)
    }
}
