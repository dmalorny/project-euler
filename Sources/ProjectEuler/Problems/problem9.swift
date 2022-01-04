class problem9 {
    init() {}

    func run(sum: Int) -> Int{
        for c in 1 ... sum {
            for b in 1 ... c {
                let a = sum - b - c
                if (a<1) {
                    continue
                }
                if (a.squared + b.squared == c.squared) {
                    print("\(a)^2 + \(b)^2 = \(c)^2");
                    print("a + b + c = \(sum)");
                    print("a * b * c = \(a*b*c)");
                    print()
                    return a*b*c
                }
            }
        }
        return 0
    }
}
